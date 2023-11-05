/*
 * Give the service worker access to Firebase Messaging.
 * Note that you can only use Firebase Messaging here, other Firebase libraries are not available in the service worker.
*/
importScripts('https://www.gstatic.com/firebasejs/7.15.0/firebase-app.js');
importScripts('https://www.gstatic.com/firebasejs/7.15.0/firebase-messaging.js');

// Firebase confing
var firebaseConfig = {
    apiKey: "AIzaSyBlC7KAI7qAURLqJBj7-HqXAOxCCQxCbmo",
    authDomain: "test0411-c4b9e.firebaseapp.com",
    projectId: "test0411-c4b9e",
    storageBucket: "test0411-c4b9e.appspot.com",
    messagingSenderId: "311278038600",
    appId: "1:311278038600:web:c1dc21981357a6511c727d",
    measurementId: "G-FYP40CQ2TH"
};

// Initialize Firebase
firebase.initializeApp(firebaseConfig);

/*
 * Retrieve an instance of Firebase Messaging so that it can handle background messages.
*/
const messaging = firebase.messaging();
messaging.setBackgroundMessageHandler(function(payload) {
    console.log('[firebase-messaging-sw.js] Received background message ', payload);

    // Customize notification here
    const notificationTitle = payload.data.title;
    const notificationOptions = {
        body: payload.data.body,
        icon: '',
        image: ''
    };

    return self.registration.showNotification(
        notificationTitle,
        notificationOptions
    );
});