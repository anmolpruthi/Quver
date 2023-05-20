import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';
import 'FeedbackDrawer.dart';
import 'feedback_login.dart';
import 'feedback_home.dart';
import 'FAQ.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Academic extends StatefulWidget {
  @override
  _AcademicState createState() => _AcademicState();
}

class _AcademicState extends State<Academic> {
  final databaseReference = FirebaseFirestore.instance.collection('suggestion').doc('suggestion_data');
  final _textEditingController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Academic Query',
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
              SizedBox(height: 30, width: 30,),
              Image.asset('assets/academic.jpg', height: 200,),
              SizedBox(height: 20, width: 20,),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Enter your Academics related query query in the box given below',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30, width: 30,),
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
                  String suggestion = _textEditingController.text;
                  FirebaseFirestore.instance.collection('queries').doc('academic_query').set({
                    'ac_q' : FieldValue.arrayUnion([_textEditingController.text]),}, SetOptions(merge: true));
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