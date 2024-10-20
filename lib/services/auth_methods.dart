import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

//Get Users Details
// Future<UserModel> getUserDetails() async {
//    User currentUser = _auth.currentUser!;
//    DocumentSnapshot documentSnapshot =await firebaseFirestore.collection('users').doc(currentUser.uid).get();
//    return UserModel.fromSnap(documentSnapshot);
// }

  //For Provider Sign In
  Future<Map<String, dynamic>?> loginDoctor(
      String email, String password) async {
    try {
      // Hash the entered password

      // Retrieve the doctor data from Firestore
      var docSnapshot = await FirebaseFirestore.instance
          .collection('doctors')
          .where('email', isEqualTo: email)
          .get();

      if (docSnapshot.docs.isNotEmpty) {
        var userData = docSnapshot.docs.first.data();
        if (userData['pass'] == password) {
          return userData; // Return user data if login is successful
        } else {
          throw Exception('Incorrect password');
        }
      } else {
        throw Exception('User not found');
      }
    } catch (e) {
      print(e);
      return null;
    }
  }
}

