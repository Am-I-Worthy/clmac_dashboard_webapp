import 'package:clmac_dashboard_webapp/Dashboard.dart';
import 'package:clmac_dashboard_webapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Dashboard(),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 0.4,
            color: Colors.red,
            child: Column(
              children: [
                Row(
                  children: [
                    
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

