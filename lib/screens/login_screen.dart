import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:rep_donkey/providers/authentication.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailTextController = TextEditingController();
  final pswdTextController = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  bool _loading = false;

  final _formEmailKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailTextController.dispose();
    pswdTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<Auth>(context);

    Future<void> getEmailVerify() async {
      setState(() {
        _loading = true;
      });
      await auth
          .authenticate(emailTextController.text, pswdTextController.text)
          .then((bool validuser) {
        if (validuser == true) {
        } else {
          showInSnackBar("UnAuthorized Login");
        }
        setState(() {
          _loading = false;
        });
      }); // to be tied to state
    }

    return GestureDetector(
        //***To Remove Focus From TextFields***//
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Form(
          key: _formEmailKey,
          child: Scaffold(
              key: _scaffoldKey,
              body: SingleChildScrollView(
                child: SafeArea(
                  child: Container(
                      child: Center(
                    child: Column(
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.only(top: 130),
                            child: Text(
                              "REP DONKEY",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            )),
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Card(
                            elevation: 20,
                            child: Container(
                                color: Colors.red,
                                width: MediaQuery.of(context).size.width * 0.8,
                                height:
                                    MediaQuery.of(context).size.height * 0.47,
                                child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(10, 40, 10, 20),
                                      child: Card(
                                        elevation: 2,
                                        child: Row(
                                          children: <Widget>[
                                            Expanded(
                                                child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 15, right: 5),
                                              child: Theme(
                                                data: ThemeData(
                                                    splashColor:
                                                        Colors.transparent),
                                                child: TextFormField(
                                                  controller:
                                                      emailTextController,

                                                  keyboardType: TextInputType
                                                      .emailAddress,
                                                  decoration: InputDecoration(
                                                    hintText: "Email",
                                                    border: InputBorder.none,
                                                  ),
//                                                          validator: (value) {
//                                                            String p = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
//                                                            RegExp regExp = new RegExp(p);
//                                                            if( regExp.hasMatch(value)){
//                                                              return null;
//                                                            }else if(value.isEmpty) {
//                                                              return 'Please Enter Email';
//                                                            }
//                                                            return 'Please enter valid Email';
//                                                          },
                                                ),
                                              ),
                                            )),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(10, 0, 10, 40),
                                      child: Card(
                                        elevation: 2,
                                        child: Row(
                                          children: <Widget>[
                                            Expanded(
                                                child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 15, right: 5),
                                              child: Theme(
                                                data: ThemeData(
                                                    splashColor:
                                                        Colors.transparent),
                                                child: TextFormField(
                                                  controller:
                                                      pswdTextController,
                                                  decoration: InputDecoration(
                                                    border: InputBorder.none,
                                                    hintText: "Password",
                                                  ),
                                                ),
                                              ),
                                            )),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(60, 0, 60, 0),
                                        child: Center(
                                            child: SizedBox(
                                                width: 150,
                                                height: 50,
                                                child: RaisedButton(
                                                  textColor: Colors.white,
                                                  color: Colors.orange,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: <Widget>[
                                                      Text(
                                                        "Sign In",
                                                        style: TextStyle(
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      _loading == true
                                                          ? Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .all(
                                                                      10.0),
                                                              child: SizedBox(
                                                                  height: 20,
                                                                  width: 20,
                                                                  child:
                                                                      CircularProgressIndicator(
                                                                    strokeWidth:
                                                                        2,
                                                                    backgroundColor:
                                                                        Colors
                                                                            .white,
                                                                  )),
                                                            )
                                                          : SizedBox()
                                                    ],
                                                  ),
                                                  onPressed: () {
                                                    final form = _formEmailKey
                                                        .currentState;
                                                    FocusScope.of(context)
                                                        .unfocus();
                                                    if (form.validate()) {
                                                      getEmailVerify();
                                                    }
                                                  },
                                                )))),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 30),
                                      child: Text(
                                        "Forgot Password ?",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    )
                                  ],
                                )),
                          ),
                        ),
                      ],
                    ),
                  )),
                ),
              )),
        ));
  }

  void showInSnackBar(value) {
    _scaffoldKey.currentState.showSnackBar(
      new SnackBar(
          content: new Text(value, style: TextStyle(color: Colors.red)),
          duration: Duration(seconds: 1)),
    );
  }
}
