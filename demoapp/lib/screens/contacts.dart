import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 50,
              ),
              Row(children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 15),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/laki.png'),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      width: 277,
                      height: 25,
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Lakitha Madanayake",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      width: 277,
                      height: 15,
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Mobile application developer",
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      width: 277,
                      height: 15,
                      alignment: Alignment.topLeft,
                      child: Text(
                        "lakitham@sltc.ac.lk",
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      width: 277,
                      height: 15,
                      alignment: Alignment.topLeft,
                      child: Text(
                        "+94775938253",
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
              Container(height: 40,),
              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 15),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/achi.png'),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        width: 277,
                        height: 25,
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Achini Shashikala",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        width: 277,
                        height: 15,
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Mobile application developer",
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        width: 277,
                        height: 15,
                        alignment: Alignment.topLeft,
                        child: Text(
                          "achinim@sltc.ac.lk",
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        width: 277,
                        height: 15,
                        alignment: Alignment.topLeft,
                        child: Text(
                          "+94766454993",
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            Container(height: 40,),
              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 15),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/dulan.png'),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        width: 277,
                        height: 25,
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Dulan Pabasara",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        width: 277,
                        height: 15,
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Software Developer",
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        width: 277,
                        height: 15,
                        alignment: Alignment.topLeft,
                        child: Text(
                          "dulanim@sltc.ac.lk ",
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        width: 277,
                        height: 15,
                        alignment: Alignment.topLeft,
                        child: Text(
                          "+94769400403",
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(height: 40,),
              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 15),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/wagee.png'),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        width: 277,
                        height: 25,
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Wageesha Aluthgama",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        width: 277,
                        height: 15,
                        alignment: Alignment.topLeft,
                        child: Text(
                          "UI/UX Developer",
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        width: 277,
                        height: 15,
                        alignment: Alignment.topLeft,
                        child: Text(
                          "wageeshaa@sltc.ac.lk ",
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        width: 277,
                        height: 15,
                        alignment: Alignment.topLeft,
                        child: Text(
                          "+94703258006",
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
