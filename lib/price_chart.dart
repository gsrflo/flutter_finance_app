import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class PriceChartPage extends StatefulWidget {
  final Widget child;
  PriceChartPage({Key key, this.child}) : super(key: key);
  _PriceChartPageState createState() => _PriceChartPageState();
}

class _PriceChartPageState extends State<PriceChartPage> {
  List<charts.Series<LinearSales, int>> _seriesData;
  _generateData() {
    var data = [
      new LinearSales(0, 5),
      new LinearSales(1, 15),
      new LinearSales(2, 100),
      new LinearSales(3, 75),
    ];
    _seriesData.add(
      charts.Series(
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        id: 'Sales',
        data: data,
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _seriesData = List<charts.Series<LinearSales, int>>();
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar:
            new AppBar(title: Text("Price"), backgroundColor: Colors.orange),
        body: Padding(
            padding: EdgeInsets.all(8.0),
            child: new Container(
                child: Center(
                    child: new Column(children: <Widget>[
              Text(
                'Price Chart',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.0,
              ),
              Expanded(
                child: charts.LineChart(_seriesData,
                    animate: true,
                    animationDuration: Duration(seconds: 1),
                    behaviors: [
                      new charts.ChartTitle('Price',
                          behaviorPosition: charts.BehaviorPosition.bottom,
                          titleOutsideJustification:
                              charts.OutsideJustification.middleDrawArea),
                    ]),
              ),
            ])))));
  }
}

class LinearSales {
  final int year;
  final int sales;

  LinearSales(this.year, this.sales);
}
