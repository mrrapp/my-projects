import 'dart:ui';

import 'package:fintech_ui/main.dart';
import 'package:fintech_ui/util/colors.dart';
import 'package:flutter/material.dart';

import '../util/MyTransactions.dart';
import '../util/my_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(height: 10),
          // Nav bar in a row
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              height: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: orangeContainer,
                  border: Border.all(color: Colors.white, width: 5)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(right: 100.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Icon(Icons.menu),
                          Text(
                            'Hello Jems',
                            style: TextStyle(fontSize: 24),
                          )
                        ]),
                  ),
                  const SizedBox(height: 50),

                  // my balance > amount > Icon
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: const [
                          Text(
                            'My Balance',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(height: 20),
                          Text(
                            '900,000.00',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Image.asset(
                        'assets/money-bag.png',
                        height: 150,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),

          // Send button  and receive money
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              MyButton(
                  Bcolor: greenButton,
                  text: 'Send Money',
                  TColor: Colors.white),
              MyButton(
                text: 'Recieve Money',
                Bcolor: Colors.white,
                TColor: Colors.grey,
              ),
            ],
          ),
          SizedBox(height: 10),

          // Transactions
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                // Transactions
                Text(
                  'Transactions',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),

                // see all
                Text('See all', style: TextStyle(fontSize: 16))
              ],
            ),
          ),
          const SizedBox(height: 10),

          // Column
          MyTransaction(
              tileColor: pinkContainer,
              name: 'Rapp Jerry',
              amount: 100,
              arrowContainerColor: Colors.blueAccent,
              icon: 'assets/right-up.png',
              paymentMeans: 'Pay Pal'),
          SizedBox(height: 15),
          MyTransaction(
              tileColor: greenContainer,
              name: 'Rapp Jerry',
              amount: 100,
              arrowContainerColor: pinkContainer,
              icon: 'assets/right-up.png',
              paymentMeans: 'Pay Pal')
        ],
      )),
    );
  }
}
