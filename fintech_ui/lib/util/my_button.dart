import 'package:flutter/material.dart';

import 'colors.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Color Bcolor;
  final Color TColor;

  const MyButton(
      {super.key,
      required this.text,
      required this.Bcolor,
      required this.TColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration:
          BoxDecoration(color: Bcolor, borderRadius: BorderRadius.circular(12)),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          color: TColor,
        ),
      ),
    );
  }
}
