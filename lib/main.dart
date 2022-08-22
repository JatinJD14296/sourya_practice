import 'package:flutter/material.dart';
import 'package:lec1/Screens/registration/space.dart';
import 'package:lec1/Screens/week_3/lession_3.dart';
import 'package:lec1/Screens/whats_up/whatsup_detail.dart';
import 'package:lec1/Screens/whats_up/whatup_screen.dart';
import 'package:lec1/homework.dart';
import 'package:lec1/lecture2.dart';
import 'package:lec1/statefull_demo.dart';

import 'Screens/registration/registration_form.dart';

main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Lecture1(),
        'registration': (context) => Registration(),
        'Lession 3': (context) => Lession3(),
        'WhatsUp': (context) => WhatsUp(),
        'WhatsUpDetail': (context) => WhatUpDetail(),
      },
      theme: ThemeData.light(),
    ),
  );
}

class Lecture1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello World',
              style: TextStyle(
                fontSize: 50.0,
                color: Colors.green,
                fontWeight: FontWeight.bold,
                // letterSpacing: 10.0,
              ),
            ),
            verticalSpace(20.0),
            MaterialButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => Registration(),
                //   ),
                // );

                Navigator.pushNamed(context, 'registration');
              },
              child: Text('Registration'),
            ),
            verticalSpace(20.0),
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, 'Lession 3');},
              child: Text('Session 3'),
            ),
            verticalSpace(20.0),
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, 'WhatsUp');},
              child: Text('WhatUp'),
            ),
          ],
        ),
      ),
    );
  }
}
