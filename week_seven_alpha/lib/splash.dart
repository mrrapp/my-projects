import 'package:flutter/material.dart';
import 'package:week_seven_alpha/main.dart';

class Spalsh extends StatefulWidget {
  const Spalsh({super.key});

  @override
  State<Spalsh> createState() => _SpalshState();
}

class _SpalshState extends State<Spalsh> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Center(
                  child:
                      Text('Welcome\n to the\nWorld Best Shopping Experience',
                          style: TextStyle(
                              //color: Colors.blueGrey,
                              fontSize: 34,
                              // fontFamily: 'Lora',
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center)),
              const SizedBox(
                height: 50,
              ),
              // Sign in button

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    //backgroundColor: Colors.blueGrey,
                    minimumSize: const Size.fromHeight(50)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                },
                child: const Text('Get Started'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
