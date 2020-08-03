import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Accounts extends StatefulWidget {
  @override
  _AccountsState createState() => _AccountsState();
}

class _AccountsState extends State<Accounts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Accounts",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
          height: MediaQuery.of(context).size.height * 1,
          width: MediaQuery.of(context).size.width * 1,
          child: ListView.builder(
            itemCount: 15,
            itemBuilder: (context, i) {
              return ListTile(
                leading: Icon(Icons.business),
                title: Text(
                  "Budget Line Instruments",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("3631 82nd Avenue CA"),
              );
            },
          )),
    );
  }
}
