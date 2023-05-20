import 'package:flutter/material.dart';
import 'feedback_theme.dart';
import 'feedback_login.dart';
import 'package:firebase_core/firebase_core.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Feedback Application',
      theme : ThemeData.light(),
      home: FeedbackLoginPage(),
    );
  }
}