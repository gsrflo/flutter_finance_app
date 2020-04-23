import 'package:flutter/material.dart';
import 'dashboard.dart';

import 'price_chart.dart';
import 'competitors.dart';
import 'risk.dart';
import 'revenue.dart';
import 'performance.dart';
import 'dividends.dart';
import 'debt.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        home: Dashboard(),

        routes: <String, WidgetBuilder>{
          "/PriceChartPage": (BuildContext context) => new PriceChartPage(),
          "/CompetitorsPage": (BuildContext context) => new CompetitorsPage(),
          "/RiskPage": (BuildContext context) => new RiskPage(),
          "/RevenuePage": (BuildContext context) => new RevenuePage(),
          "/PerformancePage": (BuildContext context) => new PerformancePage(),
          "/DividendsPage": (BuildContext context) => new DividendsPage(),
          "/DebtPage": (BuildContext context) => new DebtPage(),
        }
      //home: new FinancialData(),
    );
  }
}
