import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          child: Container(
            child: Text('Contacts content'),
          ),
        ),
      ),
    );
  }
}
