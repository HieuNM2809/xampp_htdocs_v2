importScripts('https://www.gstatic.com/firebasejs/8.3.2/firebase-app.js');
importScripts('https://www.gstatic.com/firebasejs/8.3.2/firebase-messaging.js');

firebase.initializeApp({
    apiKey: "AIzaSyAnY57WIpPeByjcQk5Js3R7oC5Wlbn69_Q",
    projectId: "test2405-a17a8",
    messagingSenderId: "837276673468",
    appId: "1:837276673468:web:d2b56942a15d40bcf0f7b9",
});

const messaging = firebase.messaging();
messaging.setBackgroundMessageHandler(function({data:{title,body,icon}}) {
    return self.registration.showNotification(title,{body,icon});
});
