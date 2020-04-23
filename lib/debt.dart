import 'package:flutter/material.dart';

class DebtPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold
      (
        appBar: new AppBar(
            title: Text("DebtPage"), backgroundColor: Colors.purple),
        body: new Container(
            child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  new Text("DebtPage"),
                ]
            )
        )
    );
  }
}