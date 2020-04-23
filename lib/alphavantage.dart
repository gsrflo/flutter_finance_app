import 'package:flutter/material.dart';

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;



class FinancialData{


  static Future<String> getStockData(stockSymbol) async {

    String part1 = "https://www.alphavantage.co/query?function=";
    String stockSeries = "TIME_SERIES_DAILY_ADJUSTED";
    String part4 = "&symbol=";
    String part5 = "&outputsize=full&apikey=";
    String apiKey = "XGHP2Y12ZV6IO4LB";   // put alphavantage api key here

    String url = part1 + stockSeries + part4 + stockSymbol + part5 + apiKey;
    var response = await http.get(Uri.encodeFull(url), headers: {
      "Accept": "application/json"
    });

    Map<String, dynamic> map = json.decode(response.body);
    //print(url);
    //print(map);
    print(map["Time Series (Daily)"]["2020-04-13"]["4. close"]);
    print(map["Time Series (Daily)"]["2020-04-14"]["4. close"]);
    print(map["Time Series (Daily)"]["2020-04-15"]["4. close"]);
    print(map["Time Series (Daily)"]["2020-04-16"]["4. close"]);
    print(map["Time Series (Daily)"]["2020-04-17"]["4. close"]);
    //print(map["Time Series (Daily)"]["2020-04-18"]["4. close"]); // not working for weekend
    //print(map["Time Series (Daily)"]["2020-04-19"]["4. close"]);
    print(map["Time Series (Daily)"]["2020-04-20"]["4. close"]);


  }

}
