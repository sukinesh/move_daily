import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FirebaseFunctions {
  static const List<String> fruits = ['apple', 'grape'];

  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  Future<void> addTestData() async {
    await firestore.collection('test').add({
      'name': 'John Doe',
      'email': 'johndoe@example.com',
    });
    debugPrint("data added");
  }

  Future<void> readData() async {
    final docRef = firestore.collection("test").doc("3mgGOcBbCdY4Vq44NVAS");
    docRef.get().then((DocumentSnapshot doc) {
      final data = doc.data() as Map<String, dynamic>;
      debugPrint(data['name']);
      // return data;
    }
        // onError: (e) => debugPrint("Error getting document: $e"),
        );
  }

  Map<String, dynamic> getCurrentUser() {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      return {"name": user.displayName, "email": user.email};
    } else {
      return {"name": "none", "email": "no email"};
    }
  }
}
