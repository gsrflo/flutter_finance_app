import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class RevenuePage extends StatefulWidget{
  final Widget child;
  RevenuePage({Key key, this.child}) : super(key: key);
  _RevenuePageState createState() => _RevenuePageState();
}

class _RevenuePageState extends State<RevenuePage> {

List<charts.Series<Task,String>> _seriesPieData;
_generateData(){
  var pieData=[
    new Task('Consumer', 35.8, Color(0xff3366cc)),
    new Task('Work', 14.2, Color(0xff990099cc)),
    new Task('Entertainment', 20.0, Color(0xfffdbe19)),
    new Task('Leisure', 5.0, Color(0xffdc3912)),
    new Task('Food', 15.0, Color(0xffff9900)),

  ];
  _seriesPieData.add(
    charts.Series(
      data:pieData,
      domainFn:(Task task,_) => task.task,
      measureFn: (Task task,_) => task.taskvalue,
      colorFn: (Task task, _) => charts.ColorUtil.fromDartColor(task.colorval),
      id: 'Daily Task',
      labelAccessorFn: (Task row,_) => '${row.taskvalue}',
    ),
  );
}


@override 
void initState() {
  super.initState();
  _seriesPieData = List<charts.Series<Task, String>>();
  _generateData();
}

  @override
  Widget build(BuildContext context) {
    return new Scaffold
      (
        appBar: new AppBar(
            title: Text("RevenuePage"), backgroundColor: Colors.teal),
        
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: new Container(
            child: Center(
              child: new Column(
                children: <Widget>[
                  Text('Time spent on daily tasks', style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold), ),
                  SizedBox(height: 10.0,),
                Expanded(
                  child: charts.PieChart(
                    _seriesPieData,
                    animate: true,
                    animationDuration: Duration(seconds: 1),
                    behaviors:[
                      new charts.DatumLegend(
                        outsideJustification: charts.OutsideJustification.endDrawArea,
                        horizontalFirst: false,
                        desiredMaxRows: 2,
                        cellPadding: new EdgeInsets.only(right: 4.0, bottom: 4.0),
                        entryTextStyle: charts.TextStyleSpec(
                          color: charts.MaterialPalette.purple.shadeDefault,
                          fontFamily: 'Giorgia',
                          fontSize: 11),

                        
                      ),
                    ],
                    defaultRenderer: new charts.ArcRendererConfig(
                      arcWidth: 100, // cart radius
                      arcRendererDecorators: [
                        new charts.ArcLabelDecorator(
                          labelPosition: charts.ArcLabelPosition.inside, // display values outside
                          ),
                      ]
                    ),
                  ),
                  ),
                ]
               
            ))
          )  )
    );
  }
}

class Task{
  String task;
  double taskvalue;
  Color colorval;

  Task(this.task, this.taskvalue, this.colorval);
}
