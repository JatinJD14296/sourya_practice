import 'package:flutter/material.dart';

class Lecture2 extends StatelessWidget {
  EdgeInsets padding = const EdgeInsets.only(left: 30.0);
  Radius radius = const Radius.circular(20.0);

  String breakfast = 'Breakfast';
  String breadApple = 'Bread,\nPeanut Butter,\nApple';
  String kcal = '525';
  String txtKCal = 'kcal';

  Widget fun(IconData icon) {
    return Container(
      color: Colors.green.shade300,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon),
          Icon(icon),
          Icon(icon),
          Icon(icon),
          Icon(icon),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 250.0,
            width: 150.0,
            padding: padding,
            margin: padding,
            decoration: BoxDecoration(
              color: Colors.green,
              border: Border.all(color: Colors.red, width: 3.0),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.orange.shade800, Colors.orange.shade200],
              ),
              boxShadow: const [
                BoxShadow(
                  spreadRadius: 1,
                  blurRadius: 20,
                  color: Colors.blue,
                  offset: Offset(20, 20),
                ),
              ],
              borderRadius: BorderRadius.only(
                topLeft: radius,
                bottomLeft: radius,
                bottomRight: radius,
                topRight: const Radius.circular(100.0),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20.0),
                Text(
                  breadApple,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Text(
                      kcal,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      txtKCal,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          fun(Icons.add),
          fun(Icons.radar),
          fun(Icons.dark_mode_outlined),
          fun(Icons.abc),
          fun(Icons.add_circle_outline),
        ],
      ),
    );
  }
}
