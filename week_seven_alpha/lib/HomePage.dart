import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'login_widget.dart';
import 'upload_post_screen.dart';
import 'package:firebase_core/firebase_core.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

// final Stream<QuerySnapshot> _postStream =
//     FirebaseFirestore.instance.collection('post').snapshots();

//class FirebaseFirestore {}

class _HomePageState extends State<HomePage> {
  final Stream<QuerySnapshot> _postStream =
      FirebaseFirestore.instance.collection('posts').snapshots();
  //final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Welcome user',
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const CircleAvatar(),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                  child: Container(
                height: 50,
                child: TextFormField(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const UploadScreen(),
                        ));
                  },
                  decoration: const InputDecoration(
                    hintText: 'Write something',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  ),
                ),
              )),
            ],
          ),
          const SizedBox(height: 30),
          StreamBuilder<QuerySnapshot>(
              stream: _postStream,
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasError) {
                  return const Text('Something went wrong');
                }

                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                return Expanded(
                  child: ListView(
                    children:
                        snapshot.data!.docs.map((DocumentSnapshot document) {
                      Map<String, dynamic> data =
                          document.data()! as Map<String, dynamic>;
                      return Container(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            leading: const CircleAvatar(),
                            title: const Text('Jon Doe'),
                            subtitle: Text(DateTime.now().toString()),
                          ),
                          Text(data['posts']),
                        ],
                      ));
                    }).toList(),
                  ),
                );
              }),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 24),
            child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50)),
                onPressed: () => FirebaseAuth.instance.signOut(),
                icon: const Icon(Icons.arrow_back, size: 32),
                label: const Text('Sign Out')),
          )
        ]),
      ),
    );
  }
}
