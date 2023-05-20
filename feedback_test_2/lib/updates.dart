import 'package:flutter/material.dart';
import 'feedback_theme.dart';
import 'feedback_login.dart';
import 'feedbackDrawer.dart';
import 'FAQ.dart';
class Updates extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();
  final textStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Updates',
          style: TextStyle(
            fontSize: 25,
          ),),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      drawer: FeedbackDrawer(),
      body: Column(
        children: [
          SizedBox(height: 16.0),
          SizedBox(height: 16.0),
          Text('Recent Updates',
            style: TextStyle(
                fontSize : 25,
                color: Colors.teal,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic
            ),),
          SizedBox(height: 16.0),

          ListView(
            shrinkWrap: true,
            children: [
              ListTile(
                leading: Icon(Icons.arrow_forward_ios_sharp),
                title : Text(
                  'CU-DCPD REGULAR SOFT SKILLS EXTERNAL VIVA SCHEDULE MCA BATCH 2024 PO RELEASED',
                  style: textStyle,
                ),
              ),
              SizedBox(height: 30,),
              ListTile(
                leading: Icon(Icons.arrow_forward_ios_sharp),
                title: Text(
                  'DCPD Competitive examination fast track courses from 27th June to 30th July 2023',
                  style: textStyle,
                ),
              ),
              SizedBox(height: 30,),
              ListTile(
                leading: Icon(Icons.arrow_forward_ios_sharp),
                title : Text(
                  'DateSheet for Re-Appear External Practical Examinations- First Year Engineering Released',
                  style: textStyle,
                ),
              ),
              SizedBox(height: 30,),
              ListTile(
                leading: Icon(Icons.arrow_forward_ios_sharp),
                title : Text(
                  'Schedule of Practical Datesheet _USB Economics(Reappear May 2023) for Course Code 20SEP-155 and 21S released!',
                  style: textStyle,
                ),
              ),
              SizedBox(height: 30,),
              ListTile(
                leading: Icon(Icons.arrow_forward_ios_sharp),
                title : Text(
                  'Schedule of EST Practical/ VIVA Datesheet _USB-Economics Feb-May 2023(Regular Released)',
                  style: textStyle,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}