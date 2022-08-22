import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lec1/Screens/registration/space.dart';
import 'package:lec1/Screens/whats_up/whatsup_detail.dart';
import 'package:lec1/Screens/whats_up/whatup_widget.dart';
import 'package:lec1/utils/colors.dart';

class WhatsUp extends StatefulWidget {
  WhatsUp({Key? key}) : super(key: key);

  @override
  State<WhatsUp> createState() => _WhatsUpState();
}

class _WhatsUpState extends State<WhatsUp> {
  DateTime dateNow = DateTime.now();

  // String date = '${dateNow.day}/${dateNow.month}/${dateNow.year}';
  GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  List<String> list = ['Calls', 'Chats', 'Contacts'];

  /// Radio
  String male = 'Male';

  String female = 'Female';

  String other = 'Other';

  String gender = 'Male';

  /// CheckBox
  bool cricket = false;

  bool volleyball = false;

  bool reading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      endDrawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(7, 94, 84, 1),
        title: Text('WhatsApp'),
        actions: [
          iconButtons(icon: Icons.search, onTap: () {}),
          iconButtons(
            icon: Icons.message,
            onTap: () {
              /// Open Drawer
              _key.currentState!.openEndDrawer();
            },
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size(0, 50),
          child: Container(
            height: 50,
            alignment: Alignment.center,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: list.map((e) => labels(e.toUpperCase())).toList()

                // [
                //   labels('Calls'),
                //   labels('Chats'),
                //   labels('Contacts'),
                // ],
                ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.message),
        mini: true,
        backgroundColor: Colors.green,
      ),
      body: ListView.separated(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return ListTile(
            onLongPress: () {
              showDialog(
                context: context,
                builder: (context) => CupertinoAlertDialog(
                  title: Text('Title'),
                  content: Text(
                      'Are you sure to delete this accounyou sure to delete this accounyou sure to delete this account?'),
                  actions: [
                    TextButton(onPressed: () {}, child: Text('Cancle')),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Ok')),
                  ],
                  // shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(20.0)),
                ),
              );
            },
            onTap: () {
              /// Next to page
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (BuildContext context) => WhatUpDetail(
              //       label: data[index]['title'],
              //       msg: data[index]['subTitle'],
              //     ),
              //   ),
              // );

              Navigator.pushNamed(
                context,
                'WhatsUpDetail',
                arguments:
                {
                  'label': data[index]['title'],
                  'msg': data[index]['subTitle'],
                },
              );
            },
            leading: CircleAvatar(
              radius: 30.0,
              backgroundImage: AssetImage(data[index]['image']),
              // child: Image.asset(),
            ),
            title: Text(
              data[index]['title'],
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Text(
              data[index]['subTitle'],
              style: TextStyle(fontSize: 14.0),
            ),
            trailing: Text(
              data[index]['date'],
              style: TextStyle(fontSize: 12.0),
            ),
          );
        },
        separatorBuilder: (context, index) => const Divider(
          thickness: 2,
          height: 2,
        ),
      ),
    );
  }
}
