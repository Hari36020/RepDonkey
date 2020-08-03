import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Contacts extends StatefulWidget {
  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Contacts",
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
                leading: Icon(Icons.account_circle),
                title: Text(
                  "Zach Power",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("zach@2hightech.biz"),
              );
            },
          )),
    );
  }
}
