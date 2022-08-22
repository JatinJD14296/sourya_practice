import 'package:flutter/material.dart';
import 'package:lec1/Screens/registration/space.dart';
import 'package:lec1/Screens/whats_up/whatup_widget.dart';

class WhatUpDetail extends StatefulWidget {
  // String label = '';
  // String msg = '';

  // WhatUpDetail({this.label = '', this.msg = ''});

  WhatUpDetail();

  @override
  State<WhatUpDetail> createState() => _WhatUpDetailState();
}

class _WhatUpDetailState extends State<WhatUpDetail> {
  String dropDownValue = 'Item 1';

  List<String> dropDownList = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
    'Item 7',
    'Item 8',
  ];

  String label = '';
  String msg = '';

  Map data = {};
  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context)!.settings.arguments as Map;

    label = data['label'];
    msg = data['msg'];


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(7, 94, 84, 1),
        title: labels(label, size: 18.0),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DropdownButton(
              icon: Icon(Icons.add),

              // isExpanded: true,
              value: dropDownValue,
              itemHeight: 49,
              onChanged: (value) {
                setState(() {
                  dropDownValue = value.toString();
                });
              },
              items: dropDownList
                  .map(
                    (e) => DropdownMenuItem(
                      child: Text(e.toString()),
                      value: e.toString(),
                    ),
                  )
                  .toList(),

              // items: [
              //   DropdownMenuItem(
              //     value: 'Item 1',
              //     child: Text('Item 1'),
              //   ),
              //   DropdownMenuItem(
              //     value: 'Item 2',
              //     child: Text('Item 2'),
              //   ),
              //   DropdownMenuItem(
              //     value: 'Item 3',
              //     child: Text('Item 3'),
              //   ),
              //   DropdownMenuItem(
              //     value: 'Item 4',
              //     child: Text('Item 4'),
              //   ),
              //   DropdownMenuItem(
              //     value: 'Item 5',
              //     child: Text('Item 5'),
              //   ),
              // ],
            ),
            verticalSpace(20.0),
            MaterialButton(
              onPressed: () {
                /// SNACKBAR
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    behavior: SnackBarBehavior.floating,
                    content: Text('Invalid Credential'),
                    duration: Duration(milliseconds: 1000),
                    margin: EdgeInsets.symmetric(vertical: 100, horizontal: 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                );
              },
              child: Text('Snackbar'),
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}
