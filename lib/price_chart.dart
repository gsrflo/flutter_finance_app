import 'package:flutter/material.dart';

class PriceChartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold
      (
        appBar: new AppBar(
            title: Text("SecondPage"), backgroundColor: Colors.orange),
        body: new Container(
            child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  new Text("PriceChartPage"),
                ]
            )
        )
    );
  }
}