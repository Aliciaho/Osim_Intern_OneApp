import 'package:flutter/material.dart';
import 'package:flutter_intern_oneapp/results_page.dart';
import 'package:flutter_intern_oneapp/start_measure_page.dart';
import './util/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: basicTheme(),
      home: StartMeasurePage(),
      routes: {
        '/start-measure': (context) => StartMeasurePage(),
        '/results-page': (context) => ResultsPage(),
      },
    );
  }
}
