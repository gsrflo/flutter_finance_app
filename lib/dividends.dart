import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class DividendsPage extends StatefulWidget{
  final Widget child;
  DividendsPage({Key key, this.child}) : super(key: key);
  _DividendsPageState createState() => _DividendsPageState();
}

class _DividendsPageState extends State<DividendsPage> {

List<charts.Series<Dividends, String>> _seriesData;
_generateData(){
  var data1 = [
      new Dividends(1980, 'USA', 30),
      new Dividends(1980, 'Asia', 40),
      new Dividends(1980, 'Europe', 10),

    ];

    var data2 = [
      new Dividends(1985, 'USA', 60),
      new Dividends(1980, 'Asia', 80),
      new Dividends(1985, 'Europe', 20),
    ];

    var data3 = [
      new Dividends(1985, 'USA', 300),
      new Dividends(1980, 'Asia', 400),
      new Dividends(1985, 'Europe', 100),
    ];

    _seriesData.add(
      charts.Series(
      domainFn: (Dividends dividends, _) => dividends.place,
      measureFn: (Dividends dividends, _) => dividends.quantity,
      id: '2018',
      data: data1,
      fillPatternFn: (_, __) => charts.FillPatternType.solid,
      fillColorFn: (Dividends dividends, _) => charts.ColorUtil.fromDartColor(Color(0xff990099)),
      ),
    );

        _seriesData.add(
      charts.Series(
      domainFn: (Dividends dividends, _) => dividends.place,
      measureFn: (Dividends dividends, _) => dividends.quantity,
      id: '2017',
      data: data2,
      fillPatternFn: (_, __) => charts.FillPatternType.solid,
      fillColorFn: (Dividends dividends, _) => charts.ColorUtil.fromDartColor(Color(0xff109618)),
      ),
    );

        _seriesData.add(
      charts.Series(
      domainFn: (Dividends dividends, _) => dividends.place,
      measureFn: (Dividends dividends, _) => dividends.quantity,
      id: '2019',
      data: data3,
      fillPatternFn: (_, __) => charts.FillPatternType.solid,
      fillColorFn: (Dividends dividends, _) => charts.ColorUtil.fromDartColor(Color(0xffff9900)),
      ),
    );
}


@override 
void initState() {
  super.initState();
  _seriesData = List<charts.Series<Dividends, String>>();
  _generateData();
}

  @override
  Widget build(BuildContext context) {
    return new Scaffold
      (
        appBar: new AppBar(
            title: Text("Dividends"), backgroundColor: Colors.orange),
        
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: new Container(
            child: Center(
              child: new Column(
                children: <Widget>[
                  Text('Dividends', style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold), ),
                  SizedBox(height: 10.0,),
                Expanded(
                  child: charts.BarChart(
                    _seriesData,
                    animate: true,
                    animationDuration: Duration(seconds: 1),
                    barGroupingType: charts.BarGroupingType.grouped,
                    
                  ),
                  ),
                ]
               
            ))
          )  )
    );
  }
}

/// Sample linear data type.
class Dividends {
  String place;
  int year;
  int quantity;

  Dividends(this.year, this.place, this.quantity);
}
