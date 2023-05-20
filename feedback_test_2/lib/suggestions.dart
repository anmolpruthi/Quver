import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';
import 'FeedbackDrawer.dart';
import 'feedback_login.dart';
import 'feedback_home.dart';
import 'FAQ.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Suggestions extends StatefulWidget {
  @override
  _SuggestionsState createState() => _SuggestionsState();
}

class _SuggestionsState extends State<Suggestions> {
  final databaseReference = FirebaseFirestore.instance.collection('suggestion').doc('suggestion_data');
  final _textEditingController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provide Suggestions',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),),
        backgroundColor: Colors.black,
      ),
      drawer: FeedbackDrawer(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Image.asset('assets/suggestion.jpg', fit: BoxFit.fill,),
              SizedBox(height: 20,),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Enter any suggestions you have in the text field given below ',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  style: TextStyle(
                    fontSize : 20,
                  ),
                  controller: _textEditingController,
                  decoration: InputDecoration(
                    hintText: 'Enter your suggestions',
                  ),
                ),
              ),
              ElevatedButton(
                onPressed : (){
                  String suggestion = _textEditingController.text;
                  FirebaseFirestore.instance.collection('suggestion').doc('suggestion_data').set({
                    'suggestions' : FieldValue.arrayUnion([_textEditingController.text]),}, SetOptions(merge: true));
                  _textEditingController.clear();
                },
                child: Text('Submit',
                  style: TextStyle(
                    fontSize: 20,
                  ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}