import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  
  await Firebase.initializeApp(
    options: const FirebaseOptions(
    apiKey: "AIzaSyB4KWk7YSrLRmuxuaGX6Qf2JOIngcKvPxc",
    appId: "1:178383008654:android:189f09b4728213a11beadf",
    messagingSenderId: "178383008654",
    projectId: "fir-app-three",
  ));
  runApp(const MyApp());
}

