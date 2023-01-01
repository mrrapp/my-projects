import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:week_seven_alpha/utils.dart';

class Database {
  // To post to firestore, acollection is needed
  CollectionReference posts = FirebaseFirestore.instance.collection('posts');

  Future createPost(String? postMessage) async {
    try {
      return await posts.add({
        // use to json method when creating post
        'posts': postMessage
      });
    } on FirebaseException {
      throw e; // will have to create failure.dart
    } catch (e) {
      throw (e.toString());
    }
  }
}
