import 'package:firebase_auth/firebase_auth.dart';

// Authentication service class
class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Sign in with email and password
  Future<UserCredential?> signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential;
    } on FirebaseAuthException catch (e) {
      print('Failed to sign in with email and password: ${e.message}');
      return null;
    }
  }

  // Sign out the current user
  Future<void> signOut() async {
    await _auth.signOut();
  }
}
