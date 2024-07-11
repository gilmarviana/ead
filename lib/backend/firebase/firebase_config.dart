import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDl4WV-Hi42JIhQXWhnvZsjl3vdEMgvoX8",
            authDomain: "cursos-teambr.firebaseapp.com",
            projectId: "cursos-teambr",
            storageBucket: "cursos-teambr.appspot.com",
            messagingSenderId: "334973234853",
            appId: "1:334973234853:web:7b286ba2428f97bd0d274c",
            measurementId: "G-R655C9MCBS"));
  } else {
    await Firebase.initializeApp();
  }
}
