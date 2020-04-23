import 'package:flutter/material.dart';

class RevenuePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold
      (
        appBar: new AppBar(
            title: Text("RevenuePage"), backgroundColor: Colors.white),
        body: new Container(
            child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  new Text("RevenuePage"),
                ]
            )
        )
    );
  }
}