import 'package:flutter/material.dart';

class CompetitorsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold
      (
        appBar: new AppBar(
            title: Text("CompetitorsPage"), backgroundColor: Colors.pink),
        body: new Container(
            child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  new Text("CompetitorsPage"),
                ]
            )
        )
    );
  }
}