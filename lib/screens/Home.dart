import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
//import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:rep_donkey/models/home_data.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:rep_donkey/providers/authentication.dart';
import 'package:rep_donkey/screens/Accounts.dart';
import 'package:rep_donkey/screens/Pipeline.dart';
import 'package:rep_donkey/screens/contacts.dart';
import 'package:rep_donkey/screens/profile.dart';

class Home extends StatefulWidget {
  final List<SalesModel> data = [
    SalesModel(
      company: "DiGiCo",
      call: 1,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    SalesModel(
      company: "Attero Tech",
      call: 3,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    SalesModel(
      company: "Shure",
      call: 5,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
  ];

  @override
  HomeState createState() => HomeState(
        data: data,
      );
}

class HomeState extends State<Home> {
  final List<SalesModel> data;

  HomeState({@required this.data});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<SalesModel, String>> series = [
      charts.Series(
          id: "call",
          data: data,
          domainFn: (SalesModel series, _) => series.company,
          measureFn: (SalesModel series, _) => series.call,
          colorFn: (SalesModel series, _) => series.barColor)
    ];
    return Scaffold(
        appBar: AppBar(
          leading: PreferredSize(
            preferredSize: Size.fromHeight(150.0),
            child: CircleAvatar(
              radius: 30.0,
              backgroundImage: AssetImage('assets/rep.jpg'),
              backgroundColor: Colors.white,
            ),
          ),
          title: Text(
            "Welcome Rebecca Hicks",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Column(children: [
          Container(
            width: MediaQuery.of(context).size.width * 2,
            height: MediaQuery.of(context).size.height * .55,
            child: new GridView.builder(
                itemCount: homelist.length,
                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    child: Card(
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey)),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                homelist[index]["icon"],
                                size: 30,
                                color: Colors.blue,
                              ),
                              Text(homelist[index]["text"])
                            ],
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      if (index == 0) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Accounts()),
                        );
                      } else if (index == 1) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Contacts()),
                        );
                      } else if (index == 5) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Profile()),
                        );
                      } else if (index == 4) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Pipeline()),
                        );
                      } else if (index == 6) {
                        final auth = Provider.of<Auth>(context, listen: false);
                        auth.logout();
                      }
                    },
                  );
                }),
          ),
          Expanded(
            child: charts.BarChart(series, animate: true),
          )
        ]));
  }
}

class SalesModel {
  final String company;
  final int call;
  final charts.Color barColor;

  SalesModel(
      {@required this.company, @required this.call, @required this.barColor});
}
