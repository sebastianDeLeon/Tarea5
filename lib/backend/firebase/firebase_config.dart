import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBVXRrMKI9M_tapremnP40NlqNsxTZo8Yw",
            authDomain: "contratame-746c8.firebaseapp.com",
            projectId: "contratame-746c8",
            storageBucket: "contratame-746c8.appspot.com",
            messagingSenderId: "156745315508",
            appId: "1:156745315508:web:c29bbffa2e1e7cccecd3e1",
            measurementId: "G-83FPXP4131"));
  } else {
    await Firebase.initializeApp();
  }
}
