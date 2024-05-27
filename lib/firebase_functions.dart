import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseFunctions {
  static const List<String> fruits = ['apple', 'grape'];

  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  Future<void> addTestData() async {
    await firestore.collection('test').add({
      'name': 'John Doe',
      'email': 'johndoe@example.com',
    });
    print("data added");
  }

  Future<void> readData() async {
    final docRef = firestore.collection("test").doc("3mgGOcBbCdY4Vq44NVAS");
    docRef.get().then((DocumentSnapshot doc) {
      final data = doc.data() as Map<String, dynamic>;
      print(data['name']);
      // return data;
    }
        // onError: (e) => print("Error getting document: $e"),
        );
  }
}
