import 'dart:io';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  ProfileState createState() {
    return ProfileState();
  }
}

class ProfileState extends State<Profile> with WidgetsBindingObserver {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //***To Remove Focus From TextFields***//
        appBar: AppBar(
          title: Text("Profile"),
        ),
        body: GestureDetector(
          onTap: () {
            FocusScopeNode currentFocus = FocusScope.of(context);
            if (!currentFocus.hasPrimaryFocus) {
              currentFocus.unfocus();
            }
          },
          child: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 1,
              child: Form(
                  key: _formKey,
                  child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Name",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                      ),
                                      Card(
                                        elevation: 2,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Row(
                                          children: <Widget>[
                                            Expanded(
                                                child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 15),
                                              child: Theme(
                                                data: ThemeData(
                                                    splashColor:
                                                        Colors.transparent),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10),
                                                  child: TextFormField(
                                                    decoration: InputDecoration(
                                                      hintText: "Rebecca Hicks",
                                                      border: InputBorder.none,
                                                    ),
                                                    validator: (value) {
                                                      if (value.isEmpty) {
                                                        return 'Please enter name ';
                                                      }
                                                      return null;
                                                    },
                                                  ),
                                                ),
                                              ),
                                            )),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Email",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                      ),
                                      Card(
                                        elevation: 2,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Row(
                                          children: <Widget>[
                                            Expanded(
                                                child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 15),
                                              child: Theme(
                                                data: ThemeData(
                                                    splashColor:
                                                        Colors.transparent),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10),
                                                  child: TextFormField(
                                                    decoration: InputDecoration(
                                                      hintText:
                                                          "rebecca@thefarmav.com",
                                                      border: InputBorder.none,
                                                    ),
                                                    validator: (value) {
                                                      if (value.isEmpty) {
                                                        return 'Please enter email ';
                                                      }
                                                      return null;
                                                    },
                                                  ),
                                                ),
                                              ),
                                            )),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Role",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                      ),
                                      Card(
                                        elevation: 2,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Row(
                                          children: <Widget>[
                                            Expanded(
                                                child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 15),
                                              child: Theme(
                                                data: ThemeData(
                                                    splashColor:
                                                        Colors.transparent),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10),
                                                  child: TextFormField(
                                                    decoration: InputDecoration(
                                                      hintText: "ceo",
                                                      border: InputBorder.none,
                                                    ),
                                                    validator: (value) {
                                                      if (value.isEmpty) {
                                                        return 'Please enter role ';
                                                      }
                                                      return null;
                                                    },
                                                  ),
                                                ),
                                              ),
                                            )),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Zoho User ID",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                      ),
                                      Card(
                                        elevation: 2,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Row(
                                          children: <Widget>[
                                            Expanded(
                                                child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 15),
                                              child: Theme(
                                                data: ThemeData(
                                                    splashColor:
                                                        Colors.transparent),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10),
                                                  child: TextFormField(
                                                    decoration: InputDecoration(
                                                      hintText:
                                                          "151651365651656",
                                                      border: InputBorder.none,
                                                    ),
                                                    validator: (value) {
                                                      if (value.isEmpty) {
                                                        return 'Please enter role ';
                                                      }
                                                      return null;
                                                    },
                                                  ),
                                                ),
                                              ),
                                            )),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Google Calender",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                      ),
                                      Card(
                                        elevation: 2,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Row(
                                          children: <Widget>[
                                            Expanded(
                                                child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 15),
                                              child: Theme(
                                                data: ThemeData(
                                                    splashColor:
                                                        Colors.transparent),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10),
                                                  child: TextFormField(
                                                    decoration: InputDecoration(
                                                      hintText:
                                                          "rebecca@thefarmav.com",
                                                      border: InputBorder.none,
                                                    ),
                                                    validator: (value) {
                                                      if (value.isEmpty) {
                                                        return 'Please enter email ';
                                                      }
                                                      return null;
                                                    },
                                                  ),
                                                ),
                                              ),
                                            )),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Upload Profile Picture",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.9,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.06,
                                        child: RaisedButton(
                                          child: Text('Choose Photo'),
                                          textColor: Colors.white,
                                          color: Colors.blue,
                                          onPressed: () {},
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              SizedBox(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.06,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.4,
                                                child: RaisedButton(
                                                  child: Text('Cancel'),
                                                  textColor: Colors.white,
                                                  color: Colors.pink,
                                                  onPressed: () {},
                                                ),
                                              ),
                                              SizedBox(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.06,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.4,
                                                child: RaisedButton(
                                                  child: Text('Save'),
                                                  textColor: Colors.white,
                                                  color: Colors.green,
                                                  onPressed: () {},
                                                ),
                                              ),
                                            ]),
                                      )
                                    ]),
                              ),
                            )
                          ]))),
            ),
          ),
        ));
  }
}
