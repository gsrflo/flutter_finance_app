import 'package:flutter/material.dart';

class PerformancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold
      (
        appBar: new AppBar(
            title: Text("PerformancePage"), backgroundColor: Colors.yellow),
        body: new Container(
            child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  new Text("PerformancePage"),
                ]
            )
        )
    );
  }
}