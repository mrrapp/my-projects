import 'package:flutter/material.dart';

import 'util/check_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void createNewTodo() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber.shade200,
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.amber,
            onPressed: () => createNewTodo(),
            child: const Icon(
              Icons.add,
              color: Colors.black,
            )),
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Center(
            child: Text(
              'To Do List',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: ListView(
          children: const [
            SizedBox(height: 10),
            MyCheckBox(textNote: 'He Restoreth my Soul'),
            SizedBox(height: 10),
            MyCheckBox(textNote: 'Hello World'),
          ],
        ));
  }
}
