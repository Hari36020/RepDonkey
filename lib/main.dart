import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rep_donkey/providers/authentication.dart';

import 'package:rep_donkey/screens/launch_screen.dart';
import 'package:rep_donkey/screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Auth(),
        ),
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          home: Consumer<Auth>(
              builder: (ctx, auth, _) => MaterialApp(
                    title: 'Rep Donkey',
                    theme: ThemeData(
                      primarySwatch: Colors.blue,
                      accentColor: Colors.blue,
                    ),
                    home: auth.isAuth ? LaunchScreen() : LoginScreen(),
                  ))),
    );
  }
}
