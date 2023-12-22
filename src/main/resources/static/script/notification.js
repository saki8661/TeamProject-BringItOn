// Import the functions you need from the SDKs you need
import {initializeApp} from "https://www.gstatic.com/firebasejs/10.7.1/firebase-app.js";
import {getAnalytics} from "https://www.gstatic.com/firebasejs/10.7.1/firebase-analytics.js";
// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries

// Your web app's Firebase configuration
// For Firebase JS SDK v7.20.0 and later, measurementId is optional
const firebaseConfig = {
    apiKey: "AIzaSyC-gPGMcSmYJ3Awax1DdeD98FlYCXk6v5I",
    authDomain: "bringiton-155fb.firebaseapp.com",
    projectId: "bringiton-155fb",
    storageBucket: "bringiton-155fb.appspot.com",
    messagingSenderId: "433639482903",
    appId: "1:433639482903:web:51bfda7d4d0077e00a1e52",
    measurementId: "G-2PJY37Z0BT"
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);
const analytics = getAnalytics(app);
