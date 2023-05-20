import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';
import 'FeedbackDrawer.dart';
import 'feedback_login.dart';
import 'feedback_home.dart';
import 'FAQ.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RaiseQuery extends StatefulWidget {
  @override
  _RaiseQueryState createState() => _RaiseQueryState();
}

class _RaiseQueryState extends State<RaiseQuery> {
  final databaseReference = FirebaseDatabase.instance.reference();
  final _textEditingController = TextEditingController();

  void _saveText() {
    String text = _textEditingController.text;
    // Save text to Firebase
    databaseReference.child('query').set(text);
    _textEditingController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask a Question',
         style: TextStyle(
           fontSize: 24,
           fontWeight: FontWeight.bold,
         ),),
        backgroundColor: Colors.black,
      ),
      drawer: FeedbackDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/university2.jpg', fit: BoxFit.fill,),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Please enter your query in the text box below ',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                style: TextStyle(
                  fontSize : 20,
                ),
                controller: _textEditingController,
                decoration: InputDecoration(
                  hintText: 'Enter your query',
                ),
              ),
            ),
            ElevatedButton(
              onPressed : (){
                _saveText();
            },
              child: Text('Submit',
              style: TextStyle(
                fontSize: 20,
              ),),
            ),
          ],
        ),
      ),
    );
  }
}