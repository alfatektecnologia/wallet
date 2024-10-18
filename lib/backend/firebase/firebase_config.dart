import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCvlBH978SvrN31LAwUqryF1rOdJbhwBJY",
            authDomain: "zooners-wallet-dqwm28.firebaseapp.com",
            projectId: "zooners-wallet-dqwm28",
            storageBucket: "zooners-wallet-dqwm28.appspot.com",
            messagingSenderId: "939208784376",
            appId: "1:939208784376:web:1804967feff1a592a3be0d"));
  } else {
    await Firebase.initializeApp();
  }
}
