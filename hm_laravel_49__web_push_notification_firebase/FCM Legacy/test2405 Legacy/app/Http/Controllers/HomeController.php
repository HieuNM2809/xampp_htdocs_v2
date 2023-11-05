<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Kutia\Larafirebase\Facades\Larafirebase;
use App\Notifications\SendPushNotification;
use Illuminate\Notifications\Notification;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
//        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('home');
    }

    public function updateToken(Request $request){
        try{
            User::create([
                'name'      => rand() . "Name",
                'email'     => rand() . "@gmail.com",
                'password'  => rand() . "password",
                'fcm_token' => $request->token
            ]);
            return response()->json([
                'success'=>true
            ]);
        }catch(\Exception $e){
            report($e);
            return response()->json([
                'success'=>false
            ],500);
        }
    }

    // Nếu có forcus web thì chạy vào luông code nhúng, còn lại chạy nền trong file firebase-messaging-sw

    // Nếu có gửi key "notification"
    // + Nếu chạy nền thì mặc định gửi ( và có thể custom lại trong file firebase-messaging-sw)
    // + Nếu đang dùng trang thì chỉnh code nhúng vào

    public function notification(Request $request){
        $request->validate([
            'title'=>'required',
            'message'=>'required'
        ]);

        try{
            $fcmTokens = User::whereNotNull('fcm_token')->pluck('fcm_token')->toArray();
//            $fcmTokens = User::whereNotNull('fcm_token')->where('id',2)->pluck('fcm_token')->toArray();
            $SERVER_API_KEY = env('FIREBASE_SERVER_KEY');

            $data = [
                "registration_ids" => $fcmTokens,
//                "notification" => [
//                    "title" => $request->title,
//                    "body" => $request->message,
//                ],
                "data" => [
                    "data1" => 1,
                    "data2" => 1,
                ]
            ];
            $dataString = json_encode($data);

            $headers = [
                'Authorization: key=' . $SERVER_API_KEY,
                'Content-Type: application/json',
            ];

            $ch = curl_init();

            curl_setopt($ch, CURLOPT_URL, 'https://fcm.googleapis.com/fcm/send');
            curl_setopt($ch, CURLOPT_POST, true);
            curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
            curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($ch, CURLOPT_POSTFIELDS, $dataString);

            $response = curl_exec($ch);

            dd($response);

            //Notification::send(null,new SendPushNotification($request->title,$request->message,$fcmTokens));

            /* or */

//            auth()->user()->notify(new SendPushNotification($request->title,$request->message,$fcmTokens));

            /* or */
//
//            Larafirebase::withTitle($request->title)
//                ->withBody($request->message)
//                ->sendMessage($fcmTokens);
//
//            return json_encode('success');
//            return redirect()->back()->with('success','Notification Sent Successfully!!');


        }catch(\Exception $e){
            return json_encode($e->getMessage());
            report($e);
            return redirect()->back()->with('error','Something goes wrong while sending notification.');
        }
    }
}
