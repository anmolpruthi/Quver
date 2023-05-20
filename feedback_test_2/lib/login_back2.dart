import 'package:feedback_test_2/FeedbackDrawer.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'feedback_home.dart';
class FeedbackLoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<FeedbackLoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future<void> _signInWithEmailAndPassword() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
          email: _emailController.text,
          password: _passwordController.text);
      if (userCredential.user != null) {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => FeedbackHomePage()));
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage('assets/logo.png'), alignment: Alignment.topCenter,),
            SizedBox(height: 50,),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                hintText: 'Enter email',
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                hintText: 'Enter password',
              ),
              obscureText: true,
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () async {
                await _signInWithEmailAndPassword();
              },
              child: Text('Sign In'),
            ),
          ],
        ),
      ),
    );
  }
}
