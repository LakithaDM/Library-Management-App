import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            /*decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/lib.png"),
                    fit: BoxFit.cover,
                  ),
                ),*/
            alignment: Alignment.center,
            child: Column(children: <Widget>[
              Container(
                height: 30,
              ),
              InkWell(
                splashColor: Colors.white.withOpacity(0.5),
                radius: 200,
                child: Ink(
                  height: 180,
                  width: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/app_logo.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Text(
                  'In BookFlo library automation system with smart ID, all the registered students and staff members to the library will be given a RFID card with a unique membership ID number encoded. The members will be able scan the ID for authentication, to borrow and return books quickly',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Text(
                  'Registered member details and book details, lending and returning details, time period will be recorded in the database. Librarian will be able to connect to the database, view the book details, member details, lending and borrowing details etc. If a member returns an overdue book, the system will calculate the fine. ',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Text(
                  'Each and every books will be attached a specific RFID tag, so the book details will be recorded in the database automatically after scanning.',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Text(
                  'BookFlo mobile app provides a library automation system which is very easy to use and fulfills all the requirement of a librarian and a user. There are many features which helps librarian to keep records of available books as well as issued books. ',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Text(
                  'Also this helps users to read books in an online platform, it records book details and borrowing details. This software is available in both mode i.e. web-based or local host based.  We provide best automated library.',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Container(
                height: 70,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
