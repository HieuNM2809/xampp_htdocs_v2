// Give the service worker access to Firebase Messaging.
// Note that you can only use Firebase Messaging here. Other Firebase libraries
// are not available in the service worker.importScripts('https://www.gstatic.com/firebasejs/7.23.0/firebase-app.js');
importScripts('https://www.gstatic.com/firebasejs/8.3.2/firebase-app.js');
importScripts('https://www.gstatic.com/firebasejs/8.3.2/firebase-messaging.js');
/*
Initialize the Firebase app in the service worker by passing in the messagingSenderId.
*/

// apiKey: "AIzaSyClxwteSf2DTYuI2V3q-x7ksfn85zzObhE",
// authDomain: "testnoti15112022.firebaseapp.com",
// projectId: "testnoti15112022",
// storageBucket: "testnoti15112022.appspot.com",
// messagingSenderId: "671174767030",
// appId: "1:671174767030:web:d033bf8aa230b889145117",
// measurementId: "G-3J4ZHGQ8FN"


firebase.initializeApp({
    apiKey: "AIzaSyClxwteSf2DTYuI2V3q-x7ksfn85zzObhE",
    authDomain: "testnoti15112022.firebaseapp.com",
    projectId: "testnoti15112022",
    storageBucket: "testnoti15112022.appspot.com",
    messagingSenderId: "671174767030",
    appId: "1:671174767030:web:d033bf8aa230b889145117",
    measurementId: "G-3J4ZHGQ8FN"
});

// Retrieve an instance of Firebase Messaging so that it can handle background
// messages.
const messaging = firebase.messaging();
messaging.setBackgroundMessageHandler(function (payload) {
    console.log("Message received.", payload);
    const title = "Hello world is awesome";
    const options = {
        body: "Your notificaiton message .",
        icon: "/firebase-logo.png",
    };
    return self.registration.showNotification(
        title,
        options,
    );
});
