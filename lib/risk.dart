import 'package:flutter/material.dart';

class RiskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold
      (
        appBar: new AppBar(
            title: Text("RiskPage"), backgroundColor: Colors.brown),
        body: new Container(
            child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  new Text("RiskPage"),
                ]
            )
        )
    );
  }
}