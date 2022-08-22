import 'package:flutter/material.dart';
import 'package:lec1/Screens/registration/space.dart';
import 'package:lec1/utils/colors.dart';
import 'package:lec1/utils/strings.dart';

class Registration extends StatefulWidget {

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  bool password = false;

  String? userNameError;
  String? emailIdError;

  /// Form with Validation
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();

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
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              blue900,
              blue200,
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpace(100),
                  Text(
                    txtRegistrationForm,
                    style: TextStyle(
                      color: white,
                    ),
                  ),
                  verticalSpace(20.0),
                  Row(
                    children: [
                      Expanded(
                        // flex: 4,
                        child: TextFormField(
                          validator: (value) {
                            return (value!.isEmpty) ? 'Please Enter User Name' : null;
                          },

                          // onChanged: (value) {
                          //   if (value.isEmpty) {
                          //     error = 'Please Enter User Name';
                          //     setState(() {});
                          //   } else {
                          //     error = null;
                          //     setState(() {});
                          //   }
                          // },
                          cursorColor: white,
                          style: TextStyle(color: white),
                          decoration: InputDecoration(
                              hintText: txtUserName,
                              labelText: txtUserName,
                              // errorText: userNameError,
                              labelStyle: TextStyle(color: white),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(color: white),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(color: white),
                              ),
                              filled: true,
                              fillColor: blue900,
                              prefixIcon: Icon(
                                Icons.person,
                                color: white,
                              )),
                        ),
                      ),
                      horizontalSpace(20.0),
                      Expanded(
                        // flex: 2,
                        child: TextFormField(
                          controller: emailController,
                          validator: (value) {
                            bool emailValid = RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(emailController.text);

                            return (value!.isEmpty)
                                ? 'Please Enter Email'
                                : (!emailValid)
                                ? 'Please Enter Valid Email'
                                : null;
                          },
                          cursorColor: white,
                          style: TextStyle(color: white),
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            // errorText: emailIdError,
                            hintText: txtEmailId,
                            labelText: txtEmailId,
                            labelStyle: TextStyle(color: white),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(color: white),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(color: white),
                            ),
                            filled: true,
                            fillColor: blue900,
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              color: white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  verticalSpace(20.0),
                  TextFormField(
                    cursorColor: white,
                    style: TextStyle(color: white),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: txtPassword,
                      labelText: txtPassword,
                      labelStyle: TextStyle(color: white),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: white),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: white),
                      ),
                      filled: true,
                      fillColor: blue900,
                      prefixIcon: Icon(
                        Icons.lock,
                        color: white,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            password = !password;
                          });
                        },
                        icon: Icon(
                          password ? Icons.visibility_off : Icons.visibility,
                          color: white,
                        ),
                      ),
                    ),
                    obscureText: password,
                  ),
                  verticalSpace(20.0),
                  Row(
                    children: [
                      Text(
                        'Gender',
                        style: TextStyle(
                          color: white,
                          fontSize: 20.0,
                        ),
                      ),
                      Radio(
                        activeColor: white,
                        value: male,
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value.toString();
                          });
                        },
                      ),
                      Text(
                        male,
                        style: TextStyle(
                          color: white,
                        ),
                      ),
                      Radio(
                        activeColor: white,
                        value: female,
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value.toString();
                          });
                        },
                      ),
                      Text(
                        female,
                        style: TextStyle(
                          color: white,
                        ),
                      ),
                      Radio(
                        activeColor: white,
                        value: other,
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value.toString();
                          });
                        },
                      ),
                      Text(
                        other,
                        style: TextStyle(
                          color: white,
                        ),
                      ),
                    ],
                  ),
                  verticalSpace(20.0),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Text(
                          'Hobby',
                          style: TextStyle(
                            color: white,
                            fontSize: 20.0,
                          ),
                        ),
                        Checkbox(
                          checkColor: blue900,
                          activeColor: white,
                          value: cricket,
                          onChanged: (value) {
                            setState(() {
                              cricket = value!;
                            });
                          },
                        ),
                        Text(
                          'Cricket',
                          style: TextStyle(
                            color: white,
                          ),
                        ),
                        Checkbox(
                          checkColor: blue900,
                          activeColor: white,
                          value: volleyball,
                          onChanged: (value) {
                            setState(() {
                              volleyball = value!;
                            });
                          },
                        ),
                        Text(
                          'Volleyball',
                          style: TextStyle(
                            color: white,
                          ),
                        ),
                        Checkbox(
                          checkColor: blue900,
                          activeColor: white,
                          value: volleyball,
                          onChanged: (value) {
                            setState(() {
                              volleyball = value!;
                            });
                          },
                        ),
                        Text(
                          'Volleyball',
                          style: TextStyle(
                            color: white,
                          ),
                        ),
                        Checkbox(
                          checkColor: blue900,
                          activeColor: white,
                          value: volleyball,
                          onChanged: (value) {
                            setState(() {
                              volleyball = value!;
                            });
                          },
                        ),
                        Text(
                          'Volleyball',
                          style: TextStyle(
                            color: white,
                          ),
                        ),
                        Checkbox(
                          checkColor: blue900,
                          activeColor: white,
                          value: reading,
                          onChanged: (value) {
                            setState(() {
                              reading = value!;
                            });
                          },
                        ),
                        Text(
                          'Reading',
                          style: TextStyle(
                            color: white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  verticalSpace(20.0),
                  Center(
                    child: MaterialButton(
                      onPressed: () {
                        formKey.currentState!.validate();
                      },
                      color: Colors.yellow.shade800,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Text(
                        'Create Account',
                        style: TextStyle(
                          color: white,
                        ),
                      ),
                    ),
                  ),



                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
