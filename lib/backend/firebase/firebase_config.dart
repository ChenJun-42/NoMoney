import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC9VKchTa0xjap-xo5Ljx4r3Gu6E_UNXQA",
            authDomain: "financial-9x3na9.firebaseapp.com",
            projectId: "financial-9x3na9",
            storageBucket: "financial-9x3na9.firebasestorage.app",
            messagingSenderId: "217826000792",
            appId: "1:217826000792:web:5c559e5115cec116ea75ed"));
  } else {
    await Firebase.initializeApp();
  }
}
