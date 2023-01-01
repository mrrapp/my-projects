import 'package:flutter/material.dart';

class MyCheckBox extends StatefulWidget {
  final String textNote;
  const MyCheckBox({super.key,
 required this.textNote
  });

  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  bool todoCompleted = false;

  // check box was tapped
  void checkBoxTapped(bool? value) {
    setState(() {
      todoCompleted = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.amber, borderRadius: BorderRadius.circular(12)),
        child: Center(
            child: Row(
          children: [
            Checkbox(
              value: todoCompleted,
              onChanged: checkBoxTapped,
              checkColor: Colors.black,
              fillColor: MaterialStatePropertyAll(Colors.amber.shade200),
              overlayColor: MaterialStatePropertyAll(Colors.amber.shade200),
            ),
             Text(
              'textNote',
              style: TextStyle(fontSize: 18),
            ),
          ],
        )),
      ),
    );
  }
}
