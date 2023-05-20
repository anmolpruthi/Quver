import 'package:feedback_test_2/RaiseQuery.dart';
import 'package:feedback_test_2/raiseSelect.dart';
import 'package:feedback_test_2/suggestions.dart';
import 'package:feedback_test_2/updates.dart';
import 'package:flutter/material.dart';
import 'feedback_theme.dart';
import 'feedback_login.dart';
import 'feedbackDrawer.dart';
import 'FAQ.dart';
import 'RaiseQuery.dart';
class FeedbackHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: AppTheme.lightTheme(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Feedback App'),
          backgroundColor: Colors.black,
        ),
        drawer: FeedbackDrawer(),
        body: Container(
          color: Colors.white,
          child: ListView(
            shrinkWrap: true,
            children: [
              SizedBox(height : 50),
              Image.asset('assets/logo.png', width: 30, ),
              SizedBox(height : 40),
              Center(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Welcome',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    ListTile(
                      leading: Icon(Icons.help_outline, size: 40,),
                      title: Text('FAQs',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontFamily: 'Montserrat',
                          fontWeight : FontWeight.bold,
                          color: Colors.teal,),),
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FAQPage()),
                        );},
                    ),
                    SizedBox(height : 20),
                ListTile(
                leading: Icon(Icons.add_circle, size: 40,),
                title: Text('Raise Query',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'Montserrat',
                    fontWeight : FontWeight.bold,
                    color: Colors.teal,),),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RaiseSelect()),
                      );}
                ),
                    SizedBox(height : 20),
                    ListTile(
                      leading: Icon(Icons.tips_and_updates_outlined, size: 40,),
                      title: Text('Suggestions',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontFamily: 'Montserrat',
                          fontWeight : FontWeight.bold,
                          color: Colors.teal,),),
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>Suggestions()),
                        );},
                    ),
                    SizedBox(height : 20),
                    ListTile(
                      leading: Icon(Icons.access_alarms_sharp, size: 40,),
                      title: Text('Updates',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontFamily: 'Montserrat',
                          fontWeight : FontWeight.bold,
                          color: Colors.teal,),),
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Updates()),
                        );},
                    ),
                  ],
                ),
              ),
              ],
          ),
        ),
      ),
    );
  }
}