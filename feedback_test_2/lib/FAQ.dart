import 'package:flutter/material.dart';
import 'feedback_theme.dart';
import 'feedback_login.dart';
import 'feedbackDrawer.dart';
class FAQPage extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAQs',
        style: TextStyle(
          fontSize: 25,
        ),),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      drawer: FeedbackDrawer(),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: 16.0),
            SizedBox(height: 16.0),
            Text('Most Asked Questions',
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
                ExpansionTile(
                  title: Text(
                    'What is the most beneficial society to join in CU',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  children: [
                    Container(
                      padding: EdgeInsets.all(16),
                      child: Text(
                        'According to the current ananlysis and survey of different societies and their perks, the IEEE society would be the best technical society to join',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height : 20),
                ExpansionTile(
                  title: Text(
                    'What is the fee payment procedure for semester and hostel fee?',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  children: [
                    Container(
                      padding: EdgeInsets.all(16),
                      child: Text(
                        'Fee payment for semester fee as well as hostel fee can be done through CUIMS via online fee payment portal. You can navigate to \nCUIMS->Home->Fee Payment\n and pay the fees from there. Otherwise the fee can be paid through offline means in Block B3, Room number 207',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height : 20),
                ExpansionTile(
                  title: Text(
                    'What are the conditions for the scholarship renewal policy?',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  children: [
                    Container(
                      padding: EdgeInsets.all(16),
                      child: Text(
                        'The criteria for renewal of scholarship is mostly related to your academic performance and attendance. To renew your scholarship every year you must \n1. Obtain more than 7.5 GPA in every Academic year \n2.You must not be detained in any subject i.e you must have more than 75% attendance in each subject \n3.You must not get E grade in any subject',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                ExpansionTile(
                  title: Text(
                    'Where to submit all the documents required?',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  children: [
                    Container(
                      padding: EdgeInsets.all(16),
                      child: Text(
                        'The documents that are to be submitted as specified on CUIMS have to be submitted in \nBlock - B1, Room number : 207',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                ExpansionTile(
                  title: Text(
                    'What is the procedure for branch change ',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  children: [
                    Container(
                      padding: EdgeInsets.all(16),
                      child: Text(
                        'According to the current ananlysis and survey of different societies and their perks, the IEEE society would be the best technical society to join',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}