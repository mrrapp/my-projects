//import 'dart:ffi';

//import 'package:flutter/cupertino.dart';
import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:week_seven_alpha/logic/firestore.dart';
//import 'package:flutter/src/widgets/container.dart';
//import 'package:flutter/src/widgets/framework.dart';

class UploadScreen extends StatefulWidget {
  const UploadScreen({super.key});

  @override
  State<UploadScreen> createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  bool complete = false; // yet to know funtion
  Database database = Database();
  TextEditingController postController = TextEditingController();

  //get image => null;
  File? pickedImage;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      //back button
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.network(
                        'https://cdn-icons-png.flaticon.com/512/4103/4103139.png',
                        height: 30,
                        width: 30,
                        color: Colors.blue,
                      ),
                    ),
                    InkWell(
                      //post button
                      onTap: () async {
                        await database.createPost(postController.text);
                        // final post = postController.text;
                        // createPost(post: post);
                        Navigator.pop(context);
                      },
                      child: Image.network(
                        'https://cdn-icons-png.flaticon.com/512/8812/8812140.png',
                        height: 30,
                        width: 30,
                        color: Colors.grey.shade400,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 24),
                    child: CircleAvatar(),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 24),
                      child: Container(
                        height: 150,
                        width: 1000,
                        child: TextFormField(
                          maxLines: 1000,
                          onChanged: (value) {
                            if (value.isNotEmpty) {
                              setState(() {
                                complete = true;
                              });
                            }
                          },
                          controller: postController,
                          decoration: const InputDecoration(
                            hintText: 'Write something',
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                // Camera button
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                        onTap: () async {
                          final image = await selectImage();
                          setState(() {
                            pickedImage = image;
                          });
                        },
                        child: Image.network(
                          'https://cdn-icons-png.flaticon.com/512/8169/8169534.png',
                          height: 30,
                          width: 30,
                          color: Colors.grey.shade900,
                        ))
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                    ),

                    //tenary operator
                    child: pickedImage == null
                        ? Center(
                            child: Text(
                              'Tap to add image',
                              style: TextStyle(color: Colors.grey[400]),
                            ),
                          )
                        : Image.file(pickedImage),
                  ))
            ]),
      ),
    );
  }

  Future createPost({required var post}) async {
    final docPost = FirebaseFirestore.instance.collection('post').doc('my-id');

    final json = {'post': post};
    await docPost.set(json);
  }

  Future<File> selectImage() async {
    //initialize image picker
    final ImagePicker selectImage = ImagePicker();

    final XFile? selectedImage =
        await selectImage.pickImage(source: ImageSource.gallery);
    final paths = File(selectedImage!.path);
    return paths;
  }
}
