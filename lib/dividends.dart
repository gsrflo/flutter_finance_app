import 'package:flutter/material.dart';

class DividendsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold
      (
        appBar: new AppBar(
            title: Text("DividendsPage"), backgroundColor: Colors.green),
        body: new Container(
            child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  new Text("DividendsPage"),
                ]
            )
        )
    );
  }
}