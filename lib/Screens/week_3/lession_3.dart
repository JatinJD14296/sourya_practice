import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lec1/Screens/registration/space.dart';

class Lession3 extends StatefulWidget {
  const Lession3({Key? key}) : super(key: key);

  @override
  State<Lession3> createState() => _Lession3State();
}

class _Lession3State extends State<Lession3> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lession 3'),
        actions: [
          /// POP MENU BUTTON
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: const Text('Shared'),
                onTap: () {
                  print('Shared');
                },
              ),
              PopupMenuItem(
                child: const Text('Setting'),
                onTap: () {
                  print('Setting');
                },
              ),
              PopupMenuItem(
                child: const Text('Logout'),
                onTap: () {
                  print('Logout');
                },
              ),
            ],
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// DROPDOWN BUTTON
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

            /// SNACKBAR
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
            verticalSpace(20.0),

            /// SIMPLE DIALOG
            MaterialButton(
              onPressed: () {
                /// SIMPLE DIALOG
                showDialog(
                  context: context,
                  builder: (context) => SimpleDialog(
                    title: Text('Title'),
                    children: [
                      Text('data'),
                      Icon(Icons.add),
                      MaterialButton(
                        onPressed: () {},
                        child: Text('data'),
                        color: Colors.green,
                      ),
                    ],
                  ),
                );
              },
              child: Text('Simple Dialog'),
              color: Colors.yellow,
            ),
            verticalSpace(20.0),

            /// ALERT DIALOG with CUPERTINO UI
            MaterialButton(
              onPressed: () {
                /// CUPERTINO ALERT DIALOG
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
                  ),
                );
              },
              child: Text('Alert Dialog'),
              color: Colors.yellow,
            ),
            verticalSpace(20.0),

            /// BOTTOM SHEET
            MaterialButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  barrierColor: Colors.yellow,
                  anchorPoint: Offset(50, 50),
                  builder: (context) => Container(
                    height: 200,
                    child: Column(
                      children: [
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),

                      ],
                    ),
                    color: Colors.green.shade300,
                  ),
                );
              },
              child: Text('Bottom Sheet'),
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}
