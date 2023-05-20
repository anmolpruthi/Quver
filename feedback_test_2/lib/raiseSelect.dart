import 'package:feedback_test_2/RaiseQuery.dart';
import 'package:feedback_test_2/academic_query.dart';
import 'package:feedback_test_2/examQuery.dart';
import 'package:flutter/material.dart';
import 'cultural_query.dart';
import 'feedback_theme.dart';
import 'feedback_home.dart';
import 'feedback_login.dart';
import 'feedbackDrawer.dart';
import 'account_query.dart';
class RaiseSelect extends StatelessWidget {
  const RaiseSelect({Key? key}) : super(key: key);
  static const textStyle = TextStyle(
    fontSize: 30.0,
    fontFamily: 'Montserrat',
    fontWeight : FontWeight.bold,
    color: Colors.teal,);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Select Department'),
      ),
      drawer: FeedbackDrawer(),
      body: Container(
        color: Colors.white,
        child: ListView(
          shrinkWrap: true,
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Please select the department concerned with your query',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50.0),
              child: ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  ListTile(
                    leading: Icon(Icons.account_balance, size: 40,),
                    title: Text('Accounts',
                      style: textStyle,),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Accounts()),
                      );},
                  ),
                  SizedBox(height : 20),
                  ListTile(
                      leading: Icon(Icons.menu_book_sharp, size: 40,),
                      title: Text('Academics',
                        style: textStyle),
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Academic()),
                        );}
                  ),
                  SizedBox(height : 20),
                  ListTile(
                    leading: Icon(Icons.add_to_photos_rounded, size: 40,),
                    title: Text('Cultural',
                      style: textStyle),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Cultural()),
                      );},
                  ),
                  SizedBox(height : 20),
                  ListTile(
                    leading: Icon(Icons.grade_outlined, size: 40,),
                    title: Text('Examination',
                      style: textStyle,),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Examination()),
                      );},
                  ),
                  SizedBox(height : 50),
                  Image.asset('assets/university3.jpg' )

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}