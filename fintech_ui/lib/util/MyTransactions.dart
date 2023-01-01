import 'package:flutter/material.dart';

import 'colors.dart';

class MyTransaction extends StatelessWidget {
  final Color tileColor;
  final String icon;
  final Color arrowContainerColor;
  final String name;
  final int amount;
  final String paymentMeans;
  const MyTransaction(
      {super.key,
      required this.tileColor,
      required this.name,
      required this.amount,
      required this.arrowContainerColor,
      required this.icon,
      required this.paymentMeans});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
            color: tileColor, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: arrowContainerColor,
                      borderRadius: BorderRadius.circular(12)),
                  child: Image.asset(
                    icon,
                    height: 20,
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text(
                          '20,Dec,2022',
                          style: TextStyle(fontSize: 12),
                        ),
                        Text(
                          '10 : 00 AM',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '\$$amount',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Text(
                  paymentMeans,
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
