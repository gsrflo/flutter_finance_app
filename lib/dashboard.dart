import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'alphavantage.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  String name = "";

  // vectors for graph
  var data1 = [0.0, 0.4, 0.6, -0.3, 0.2, -0.2, 0.0, 0.7];
  var data2 = [0.0, 0.2, -0.1, 0.3];

  // elevation of tiles
  var elevationValue = 14.0; // fallback

  static const elevationValueHigh = 14.0;
  static const elevationValueLow = 4.0;
  var elevationValueTileInput = elevationValueHigh;
  var elevationValueTileChart = elevationValueHigh;
  var elevationValueTileRevenue = elevationValueHigh;
  var elevationValueTileCompetitors = elevationValueHigh;
  var elevationValueTileRisk = elevationValueHigh;
  var elevationValueTilePerformance = elevationValueHigh;
  var elevationValueTileDividends = elevationValueHigh;
  var elevationValueTileDebt = elevationValueHigh;


  // on Tap Actions
  void _onTapDownAction() {
    setState(() {
      data1 = [0.0, 0.4, 0.6, -0.3, 0.2, -0.2, 0.0, 0.7];
      elevationValueTileInput = elevationValueHigh;
      elevationValueTileChart = elevationValueHigh;
      elevationValueTileRevenue = elevationValueHigh;
      elevationValueTileCompetitors = elevationValueHigh;
      elevationValueTileRisk = elevationValueHigh;
      elevationValueTilePerformance = elevationValueHigh;
      elevationValueTileDividends = elevationValueHigh;
      elevationValueTileDebt = elevationValueHigh;
    });
  }

  void _onTapTileInput() {
    setState(() {
      data1 = [-0.4, 0.2, 0.0, 0.6, 0.0, 0.4, 0.3, 0.0];
      elevationValueTileInput = elevationValueLow;
      elevationValueTileChart = elevationValueHigh;
      elevationValueTileRevenue = elevationValueHigh;
      elevationValueTileCompetitors = elevationValueHigh;
      elevationValueTileRisk = elevationValueHigh;
      elevationValueTilePerformance = elevationValueHigh;
      elevationValueTileDividends = elevationValueHigh;
      elevationValueTileDebt = elevationValueHigh;

    });

  }

  void _onTapTileChart() {
    setState(() {
      data1 = [0.1, -0.2, 0.4, 0.3, 0.0, -0.2, 0.0, 0.4];
      elevationValueTileInput = elevationValueHigh;
      elevationValueTileChart = elevationValueLow;
      elevationValueTileRevenue = elevationValueHigh;
      elevationValueTileCompetitors = elevationValueHigh;
      elevationValueTileRisk = elevationValueHigh;
      elevationValueTilePerformance = elevationValueHigh;
      elevationValueTileDividends = elevationValueHigh;
      elevationValueTileDebt = elevationValueHigh;
    });
  }

  void _onTapTileRevenue() {
    setState(() {
      data1 = [0.1, -0.4, 0.4, -0.4, 0.2, 0.2, 0.6, -0.4];
      elevationValueTileInput = elevationValueHigh;
      elevationValueTileChart = elevationValueHigh;
      elevationValueTileRevenue = elevationValueLow;
      elevationValueTileCompetitors = elevationValueHigh;
      elevationValueTileRisk = elevationValueHigh;
      elevationValueTilePerformance = elevationValueHigh;
      elevationValueTileDividends = elevationValueHigh;
      elevationValueTileDebt = elevationValueHigh;
    });
  }

  void _onTapTileCompetitors() {
    setState(() {
      data1 = [0.4, -0.2, 0.4, 0.7, 0.2, 0.2, 0.0, -0.4];
      elevationValueTileInput = elevationValueHigh;
      elevationValueTileChart = elevationValueHigh;
      elevationValueTileRevenue = elevationValueHigh;
      elevationValueTileCompetitors = elevationValueLow;
      elevationValueTileRisk = elevationValueHigh;
      elevationValueTilePerformance = elevationValueHigh;
      elevationValueTileDividends = elevationValueHigh;
      elevationValueTileDebt = elevationValueHigh;
    });
  }

  void _onTapTileRisk() {
    setState(() {
      data1 = [-0.4, 0.2, 0.4, -0.7, -0.2, -0.2, 0.6, 0.4];
      elevationValueTileInput = elevationValueHigh;
      elevationValueTileChart = elevationValueHigh;
      elevationValueTileRevenue = elevationValueHigh;
      elevationValueTileCompetitors = elevationValueHigh;
      elevationValueTileRisk = elevationValueLow;
      elevationValueTilePerformance = elevationValueHigh;
      elevationValueTileDividends = elevationValueHigh;
      elevationValueTileDebt = elevationValueHigh;
    });
  }

  void _onTapTilePerformance() {
    setState(() {
      data1 = [0.1, 0.2, -0.4, 0.2, 0.0, 0.2, 0.0, -0.2];
      elevationValueTileInput = elevationValueHigh;
      elevationValueTileChart = elevationValueHigh;
      elevationValueTileRevenue = elevationValueHigh;
      elevationValueTileCompetitors = elevationValueHigh;
      elevationValueTileRisk = elevationValueHigh;
      elevationValueTilePerformance = elevationValueLow;
      elevationValueTileDividends = elevationValueHigh;
      elevationValueTileDebt = elevationValueHigh;
    });
  }

  void _onTapTileDividends() {
    setState(() {
      data1 = [0.0, -0.2, 0.4, 0.3, 0.4, 0.6, 0.5, 0.8];
      elevationValueTileInput = elevationValueHigh;
      elevationValueTileChart = elevationValueHigh;
      elevationValueTileRevenue = elevationValueHigh;
      elevationValueTileCompetitors = elevationValueHigh;
      elevationValueTileRisk = elevationValueHigh;
      elevationValueTilePerformance = elevationValueHigh;
      elevationValueTileDividends = elevationValueLow;
      elevationValueTileDebt = elevationValueHigh;
    });
  }

  void _onTapTileDebt() {
    setState(() {
      data1 = [0.7, -0.2, -0.4, 0.3, -0.4, 0.2, 0.3, -0.8];
      elevationValueTileInput = elevationValueHigh;
      elevationValueTileChart = elevationValueHigh;
      elevationValueTileRevenue = elevationValueHigh;
      elevationValueTileCompetitors = elevationValueHigh;
      elevationValueTileRisk = elevationValueHigh;
      elevationValueTilePerformance = elevationValueHigh;
      elevationValueTileDividends = elevationValueHigh;
      elevationValueTileDebt = elevationValueLow;
    });
  }

  // build tiles

  Material _buildTile(Widget body, String heading) {
    return Material(
        color: Colors.white,
        elevation: elevationValue,
        shadowColor: Color(0x802196F3),
        borderRadius: BorderRadius.circular(24.0),
        child: Center(
            child: InkResponse(
                onTap: () {
                  _onTapDownAction();
                  print("tapped");
                },
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            // text
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  heading,
                                  style: TextStyle(
                                    //color: new Color(color),
                                    fontSize: 20.0,
                                  ),
                                )),
                            body,
                          ],
                        )
                      ],
                    )))));
  }

  Material _buildTileInput(Widget body, String heading) {
    return Material(
        color: Colors.white,
        elevation: elevationValueTileInput,
        shadowColor: Color(0x802196F3),
        borderRadius: BorderRadius.circular(24.0),
        child: Center(
            child: InkResponse(
                onTap: () {
                  _onTapTileInput();
                  print("tapped Input Tile");
                },
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            body,
                          ],
                        )
                      ],
                    )))));
  }

  Material _buildTileChart(Widget body, String heading) {
    return Material(
        color: Colors.white,
        elevation: elevationValueTileChart,
        shadowColor: Color(0x802196F3),
        borderRadius: BorderRadius.circular(24.0),
        child: Center(
            child: InkResponse(
                onTap: () {
                  _onTapTileChart();
                  print("tapped Chart Tile");
                },
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            // text
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  heading,
                                  style: TextStyle(
                                    //color: new Color(color),
                                    fontSize: 20.0,
                                  ),
                                )),
                            body,
                          ],
                        )
                      ],
                    )))));
  }

  Material _buildTileRevenue(Widget body, String heading) {
    return Material(
        color: Colors.white,
        elevation: elevationValueTileRevenue,
        shadowColor: Color(0x802196F3),
        borderRadius: BorderRadius.circular(24.0),
        child: Center(
            child: InkResponse(
                onTap: () {
                  _onTapTileRevenue();
                  print("tapped Revenue Tile");
                },
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            // text
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  heading,
                                  style: TextStyle(
                                    //color: new Color(color),
                                    fontSize: 20.0,
                                  ),
                                )),
                            body,
                          ],
                        )
                      ],
                    )))));
  }

  Material _buildTileCompetitors(Widget body, String heading) {
    return Material(
        color: Colors.white,
        elevation: elevationValueTileCompetitors,
        shadowColor: Color(0x802196F3),
        borderRadius: BorderRadius.circular(24.0),
        child: Center(
            child: InkResponse(
                onTap: () {
                  _onTapTileCompetitors();
                  print("tapped Competitors Tile");
                },
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            // text
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  heading,
                                  style: TextStyle(
                                    //color: new Color(color),
                                    fontSize: 20.0,
                                  ),
                                )),
                            body,
                          ],
                        )
                      ],
                    )))));
  }

  Material _buildTileRisk(Widget body, String heading) {
    return Material(
        color: Colors.white,
        elevation: elevationValueTileRisk,
        shadowColor: Color(0x802196F3),
        borderRadius: BorderRadius.circular(24.0),
        child: Center(
            child: InkResponse(
                onTap: () {
                  _onTapTileRisk();
                  print("tapped Risk Tile");
                },
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            // text
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  heading,
                                  style: TextStyle(
                                    //color: new Color(color),
                                    fontSize: 20.0,
                                  ),
                                )),
                            body,
                          ],
                        )
                      ],
                    )))));
  }

  Material _buildTilePerformance(Widget body, String heading) {
    return Material(
        color: Colors.white,
        elevation: elevationValueTilePerformance,
        shadowColor: Color(0x802196F3),
        borderRadius: BorderRadius.circular(24.0),
        child: Center(
            child: InkResponse(
                onTap: () {
                  _onTapTilePerformance();
                  print("tapped Performance Tile");
                },
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            // text
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  heading,
                                  style: TextStyle(
                                    //color: new Color(color),
                                    fontSize: 20.0,
                                  ),
                                )),
                            body,
                          ],
                        )
                      ],
                    )))));
  }

  Material _buildTileDividends(Widget body, String heading) {
    return Material(
        color: Colors.white,
        elevation: elevationValueTileDividends,
        shadowColor: Color(0x802196F3),
        borderRadius: BorderRadius.circular(24.0),
        child: Center(
            child: InkResponse(
                onTap: () {
                  _onTapTileDividends();
                  print("tapped Dividends Tile");
                },
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            // text
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  heading,
                                  style: TextStyle(
                                    //color: new Color(color),
                                    fontSize: 20.0,
                                  ),
                                )),
                            body,
                          ],
                        )
                      ],
                    )))));
  }

  Material _buildTileDebt(Widget body, String heading) {
    return Material(
        color: Colors.white,
        elevation: elevationValueTileDebt,
        shadowColor: Color(0x802196F3),
        borderRadius: BorderRadius.circular(24.0),
        child: Center(
            child: InkResponse(
                onTap: () {
                  _onTapTileDebt();
                  print("tapped Debt Tile");
                },
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            // text
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  heading,
                                  style: TextStyle(
                                    //color: new Color(color),
                                    fontSize: 20.0,
                                  ),
                                )),
                            body,
                          ],
                        )
                      ],
                    )))));
  }

  _buildChart() {
    return new Sparkline(
        data: data1,
        lineColor: Color(0xFF464e54),
        pointsMode: PointsMode.all,
        pointSize: 8.0);
  }

  _buildFilledChart() {
    return Material(
        child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: new Sparkline(
                data: data2,
                fillMode: FillMode.below,
                fillGradient: new LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.lightBlue[800], Colors.lightBlue[200]]),
                lineColor: Color(0xFF464e54),
                pointsMode: PointsMode.all,
                pointSize: 8.0)));
  }

  _buildIcon(IconData icon, int color) {
    return Material(
        color: new Color(color),
        borderRadius: BorderRadius.circular(24),
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(
              icon,
              color: Colors.white,
              size: 30.0,
            )));
  }

  String userText = '';

  void updateUserText(String text) {
    setState(() {
      userText = text;
      FinancialData.getStockData(text);
    });
  }

  _buildTextBox() {
    return Material(

      child: Column(children: <Widget>[
        SizedBox(
          width: 300,
          child: TextField(
            onSubmitted: updateUserText, //onSubmitted for not live
            decoration: InputDecoration(
              labelText: "Stock Symbol",
              fillColor: Colors.white,
              border: new OutlineInputBorder(
                borderRadius: new BorderRadius.circular(24.0),
                borderSide: const BorderSide(color: Colors.green, width: 10.0),
              ),
              icon: Icon(Icons.search),
            ),
          ),
        ),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Verticalanalytics', style: TextStyle(color: Colors.white)),
      ),
      body: StaggeredGridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        children: <Widget>[
          _buildTileInput(_buildTextBox(), ""),
          _buildTileChart(_buildChart(), "Chart"),
          _buildTileCompetitors(
              _buildIcon(Icons.table_chart, 0xff44bbf4), "Competitors"),
          _buildTileRisk(_buildIcon(Icons.bubble_chart, 0xff44bbf4), "Risk"),
          _buildTileRevenue(
              _buildIcon(Icons.data_usage, 0xff44bbf4), "Revenue"),
          _buildTilePerformance(
              _buildIcon(Icons.multiline_chart, 0xff44bbf4), "Performance"),
          _buildTileDividends(
              _buildIcon(Icons.insert_chart, 0xff44bbf4), "Dividends"),
          _buildTileDebt(_buildIcon(Icons.money_off, 0xff44bbf4), "Debt"),
        ],
        staggeredTiles: [
          StaggeredTile.extent(2, 100.0),
          StaggeredTile.extent(2, 230.0),
          StaggeredTile.extent(1, 130.0),
          StaggeredTile.extent(1, 130.0),
          StaggeredTile.extent(1, 130.0),
          StaggeredTile.extent(1, 130.0),
          StaggeredTile.extent(1, 130.0),
          StaggeredTile.extent(1, 130.0),
          StaggeredTile.extent(2, 100.0),
        ],
      ),
    );
  }
}
