<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="dns-prefetch" href="//fonts.bunny.net">
    <link href="https://fonts.bunny.net/css?family=Nunito" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/1.2.1/axios.min.js"></script>
    <script src="https://www.gstatic.com/firebasejs/8.3.2/firebase-app.js"></script>
    <script src="https://www.gstatic.com/firebasejs/8.3.2/firebase-messaging.js"></script>
    <script src="https://code.jquery.com/jquery-3.7.0.min.js"
            integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
</head>
<body>
    <div id="token"></div>
    <div id="msg"></div>
    <div id="notis"></div>
    <div id="err"></div>
    <script>

        MsgElem = document.getElementById('msg');
        TokenElem = document.getElementById('token');
        NotisElem = document.getElementById('notis');
        ErrElem = document.getElementById('err');

        // Your web app's Firebase configuration
        const firebaseConfig = {
            apiKey: "AIzaSyBlC7KAI7qAURLqJBj7-HqXAOxCCQxCbmo",
            authDomain: "test0411-c4b9e.firebaseapp.com",
            projectId: "test0411-c4b9e",
            storageBucket: "test0411-c4b9e.appspot.com",
            messagingSenderId: "311278038600",
            appId: "1:311278038600:web:c1dc21981357a6511c727d",
            measurementId: "G-FYP40CQ2TH"
        };
        // Initialize Firebase
        const app = firebase.initializeApp(firebaseConfig);
        const messaging = firebase.messaging();

        async function initFirebaseMessagingRegistration() {
            try {
                let token = await messaging.getToken();
                console.log("token: ", token)
                axios.post("{{ route('fcmToken') }}", {
                    _method: "PATCH",
                    token
                }).then(({data}) => {
                    console.log(data)
                }).catch(({response: {data}}) => {
                    console.error(data)
                })
            } catch (e) {
                console.log(`Token Error :: ${e}`);
            }
        }

        initFirebaseMessagingRegistration();

        messaging.onMessage(function(payload) {

            console.log(JSON.stringify(payload));

            //
            // console.log('Message received. ', payload);
            // NotisElem.innerHTML = NotisElem.innerHTML + JSON.stringify(payload)
            //
            // var response = payload.hasOwnProperty('notification') ? payload.notification : payload.data;
            //
            // notificationTitle = response.title;
            // notificationOptions = {
            //     body: response.body,
            //     icon: response.icon,
            //     image: response.image
            // };
            // var notification = new Notification(notificationTitle,notificationOptions);
        });
    </script>
</body>
</html>
