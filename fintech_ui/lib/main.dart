import 'package:flutter/material.dart';

import 'pages/HomePage.dart';

void main() => runApp(const MyApp());


// My App class

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}