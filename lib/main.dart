import 'package:clmac_dashboard_webapp/Dashboard.dart';
import 'package:clmac_dashboard_webapp/Profile.dart';
import 'package:clmac_dashboard_webapp/navbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clean Mac',
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
          Navbar(),
          Dashboard(),
          Profile(),
        ],
      ),
    );
  }
}



