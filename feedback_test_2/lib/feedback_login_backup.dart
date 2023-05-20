import 'package:flutter/material.dart';
import 'feedback_theme.dart';
import 'feedback_home.dart';

class FeedbackLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: AppTheme.darkTheme(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Username',
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => FeedbackHomePage()),
                  );
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}