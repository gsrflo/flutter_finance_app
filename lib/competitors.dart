import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class CompetitorsPage extends StatefulWidget {
  final Widget child;
  CompetitorsPage({Key key, this.child}) : super(key: key);
  _CompetitorsPageState createState() => _CompetitorsPageState();
}

class _CompetitorsPageState extends State<CompetitorsPage> {
  List<charts.Series<Sales, int>> _seriesData;
  _generateData() {
    var data1 = [
      new Sales(0, 45),
      new Sales(1, 50),
      new Sales(2, 55),
      new Sales(3, 40),
      new Sales(4, 60),
      new Sales(5, 19),

    ];

    var data2 = [
      new Sales(0, 15),
      new Sales(1, 30),
      new Sales(2, 43),
      new Sales(3, 48),
      new Sales(4, 67),
      new Sales(5, 50),

    ];

    var data3 = [
      new Sales(0, 25),
      new Sales(1, 20),
      new Sales(2, 55),
      new Sales(3, 20),
      new Sales(4, 20),
      new Sales(5, 29),

    ];

    _seriesData.add(
      charts.Series(
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
        id: 'Sales',
        data: data1,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (__, _) =>
            charts.ColorUtil.fromDartColor(Color(0xff990099)),
      ),
    );
    _seriesData.add(
      charts.Series(
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
        id: 'Sales',
        data: data2,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (__, _) =>
            charts.ColorUtil.fromDartColor(Color(0xff109618)),
      ),
    );
    _seriesData.add(
      charts.Series(
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
        id: 'Sales',
        data: data3,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (__, _) =>
            charts.ColorUtil.fromDartColor(Color(0xff0099cc)),
      ),
    );

   
  }

  @override
  void initState() {
    super.initState();
    _seriesData = List<charts.Series<Sales, int>>();
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
            title: Text("Competitors"), backgroundColor: Colors.pink),
        body: Padding(
            padding: EdgeInsets.all(8.0),
            child: new Container(
                child: Center(
                    child: new Column(children: <Widget>[
              Text(
                'Competitors',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.0,
              ),
              Expanded(
                child: charts.LineChart(
                  _seriesData,
                  defaultRenderer: new charts.LineRendererConfig(
                    includeArea: true, 
                    stacked: true,
                  ),
                  animate: true,
                  animationDuration: Duration(seconds: 1),

                  behaviors:[
                    new charts.ChartTitle('Years',
                    behaviorPosition: charts.BehaviorPosition.bottom,
                    titleOutsideJustification: charts.OutsideJustification.middleDrawArea),

                    new charts.ChartTitle('Sales',
                    behaviorPosition: charts.BehaviorPosition.start,
                    titleOutsideJustification: charts.OutsideJustification.middleDrawArea),
                    
                    new charts.ChartTitle('Departments',
                    behaviorPosition: charts.BehaviorPosition.end,
                    titleOutsideJustification: charts.OutsideJustification.middleDrawArea),
                    
                  ]
                ),
              ),
            ])))));
  }
}

/// Sample linear data type.
class Sales {
  int yearval;
  int salesval;

  Sales(this.yearval, this.salesval);
}
