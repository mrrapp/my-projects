import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:week_seven_alpha/splash.dart';
import 'package:week_seven_alpha/utils.dart';

import 'HomePage.dart';
import 'auth_page.dart';
import 'login_widget.dart';
import 'utils.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: "AIzaSyAIWZSo1rSxqU4JfAe7ibqmUl2mltAwKZ4",
    appId: "1:9355847238:android:9a10e592c7a20f591d4c47",
    messagingSenderId: "9355847238",
    projectId: "fir-app-two-5cb2b",
  ));
  runApp(
    const MyApp(),
  );
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static final String title = 'FirebaseAuth';

  @override
  Widget build(BuildContext context) => MaterialApp(
        // scaffoldMessengerKey: Utils.messengerKey,
        navigatorKey: navigatorKey,
        title: title,
        home: const Spalsh(),
        // theme: ThemeData.dark(),
      );
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return const Center(
              child: Text('Oops something went wrong!'),
            );
          } else if (snapshot.hasData) {
            return const HomePage();
          } else {
            return const AuthPage();
          }
        },
      ),
    );
  }
}
