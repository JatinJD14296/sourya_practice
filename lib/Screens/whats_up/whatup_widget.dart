import 'package:flutter/material.dart';
import 'package:lec1/utils/colors.dart';

Widget labels(
  String label, {
  Color? color,
  double size = 14.0,
}) =>
    Text(
      label.toUpperCase(),
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: color ?? white,
        fontSize: size,
      ),
    );

Widget iconButtons({
  IconData icon = Icons.more_vert,
  Function()? onTap,
}) =>
    IconButton(
      onPressed: onTap,
      icon: Icon(icon),
    );

List<Map> data = [
  {
    'image': 'images/abc.jpeg',
    'title': 'Real Estate Advisor Bangalore',
    'subTitle': 'Bhavani : tried...',
    'date': '9:04 AM',
  },
  {
    'image': 'images/xyz.jpeg',
    'title': 'Tanna Associate mumbai',
    'subTitle': 'Rahim : Thanks',
    'date': 'Yesterday',
  },
  {
    'image': 'images/abc.jpeg',
    'title': 'Flutter Training',
    'subTitle': 'Hiii',
    'date': 'Yesterday',
  },
  {
    'image': 'images/xyz.jpeg',
    'title': 'Think Quotient',
    'subTitle': 'Ma\'am : Please Join Fast',
    'date': '14/08/2022',
  },
  {
    'image': 'images/abc.jpeg',
    'title': 'Real Estate Advisor Bangalore',
    'subTitle': 'Bhavani : tried...',
    'date': '9:04 AM',
  },
  {
    'image': 'images/xyz.jpeg',
    'title': 'Tanna Associate mumbai',
    'subTitle': 'Rahim : Thanks',
    'date': 'Yesterday',
  },
  {
    'image': 'images/abc.jpeg',
    'title': 'Flutter Training',
    'subTitle': 'Hiii',
    'date': 'Yesterday',
  },
  {
    'image': 'images/xyz.jpeg',
    'title': 'Think Quotient',
    'subTitle': 'Ma\'am : Please Join Fast',
    'date': '14/08/2022',
  },
  {
    'image': 'images/abc.jpeg',
    'title': 'Real Estate Advisor Bangalore',
    'subTitle': 'Bhavani : tried...',
    'date': '9:04 AM',
  },
  {
    'image': 'images/xyz.jpeg',
    'title': 'Tanna Associate mumbai',
    'subTitle': 'Rahim : Thanks',
    'date': 'Yesterday',
  },
  {
    'image': 'images/abc.jpeg',
    'title': 'Flutter Training',
    'subTitle': 'Hiii',
    'date': 'Yesterday',
  },
  {
    'image': 'images/xyz.jpeg',
    'title': 'Think Quotient',
    'subTitle': 'Ma\'am : Please Join Fast',
    'date': '14/08/2022',
  },
  {
    'image': 'images/abc.jpeg',
    'title': 'Real Estate Advisor Bangalore',
    'subTitle': 'Bhavani : tried...',
    'date': '9:04 AM',
  },
  {
    'image': 'images/xyz.jpeg',
    'title': 'Tanna Associate mumbai',
    'subTitle': 'Rahim : Thanks',
    'date': 'Yesterday',
  },
  {
    'image': 'images/abc.jpeg',
    'title': 'Flutter Training',
    'subTitle': 'Hiii',
    'date': 'Yesterday',
  },
  {
    'image': 'images/xyz.jpeg',
    'title': 'Think Quotient',
    'subTitle': 'Ma\'am : Please Join Fast',
    'date': '14/08/2022',
  },
];
