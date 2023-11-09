importScripts('https://www.gstatic.com/firebasejs/8.3.2/firebase-app.js');
importScripts('https://www.gstatic.com/firebasejs/8.3.2/firebase-messaging.js');

firebase.initializeApp({
    apiKey: "AIzaSyBlC7KAI7qAURLqJBj7-HqXAOxCCQxCbmo",
    authDomain: "test0411-c4b9e.firebaseapp.com",
    projectId: "test0411-c4b9e",
    storageBucket: "test0411-c4b9e.appspot.com",
    messagingSenderId: "311278038600",
    appId: "1:311278038600:web:c1dc21981357a6511c727d",
    measurementId: "G-FYP40CQ2TH"
});

// code firebase chạy backgroud
// Nếu
// {
//     "data": {
//         "hehe1": "Tiêu đề1 4444",
//         "hehe2": "Nội dung2 3"
//     },
//     // "notification": {
//     //     "title": "Tiêu đề thông báo",
//     //     "body": "Nội dung thông báo 3"
//     // },
//     "to": "eFnmheoKSmhTuxXu4HdPAs:APA91bH1YsDghSQrYAs3Ysd1MJqN4OgxvhSpvjVhn736fVrAPrWTJcd9blojNqeNx2oyNQib0yAuYtNVzD-uS0RGynjMYtx95txcn13bnCOWjh7iZOMqn-kZgukQMWko4DMerS7QC-Yz"
// }
// có gửi notification thì nó sẽ gửi noti ( nếu chạy nền thì vào setBackgroundMessageHandler chỉnh noti, ngược lại vào file nhúng )



const messaging = firebase.messaging();
messaging.setBackgroundMessageHandler(function(payload) {
    console.log('[firebase-messaging-sw.js] Received background message ', JSON.stringify(payload));

    // Customize notification here
    // const notificationTitle = payload.data.title;
    // const notificationOptions = {
    //     body: payload.data.body,
    //     icon: '',
    //     image: ''
    // };
    //
    // return self.registration.showNotification(
    //     notificationTitle,
    //     notificationOptions
    // );
});
