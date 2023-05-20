import 'package:feedback_test_2/RaiseQuery.dart';
import 'package:feedback_test_2/suggestions.dart';
import 'package:feedback_test_2/updates.dart';
import 'package:flutter/material.dart';
import 'feedback_theme.dart';
import 'feedback_home.dart';
import 'feedback_login.dart';
import 'package:image_watermark/image_watermark.dart';
import 'raiseSelect.dart';
class FeedbackDrawer extends StatelessWidget {
  final listTextStyle = TextStyle(
    color : Colors.black,
    fontFamily : 'Roboto',
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Text(
                'Welcome',
                textAlign: TextAlign.center,
                style : TextStyle(
                  color : Colors.black,
                  fontFamily : 'Roboto',
                  fontSize: 28,
                  fontWeight : FontWeight.bold,
                )),
            decoration: BoxDecoration(
              image : DecorationImage(
                image: AssetImage('assets/university.jpeg'),
                fit: BoxFit.fill,
                opacity: 10,
              )
            ),
          ),
          ListTile(
            title: Text('Home',
            style: listTextStyle,),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FeedbackHomePage()),
                );
              },

          ),
          ListTile(
            title: Text('Raise Query',
              style: listTextStyle,),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RaiseSelect()),
                );}
          ),
          ListTile(
            title: Text('Suggestions',
              style: listTextStyle,),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Suggestions()),
              );},
          ),
          ListTile(
            title: Text('Updates',
              style: listTextStyle,),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Updates()),
              );
            },
          ),
          ListTile(
            title: Text('Logout',
              style: listTextStyle,),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => FeedbackLoginPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}