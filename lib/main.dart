import 'package:clmac_dashboard_webapp/Dashboard.dart';
import 'package:clmac_dashboard_webapp/constants.dart';
import 'package:clmac_dashboard_webapp/navbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 0.5 - 109.0,
            padding: EdgeInsets.only(left: 20.0),
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.settings_outlined),
                    Icon(Icons.notifications_outlined),
                    SizedBox(
                      height: 30.0,
                      width: 30.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1610273313191-1e96cd072c2e?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1900&q=80',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height - 200,
                    width: MediaQuery.of(context).size.width * 0.4,
                    padding: EdgeInsets.all(30.0),
                    decoration: BoxDecoration(
                      color: rightSideBackColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Other Functions',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 16.0,
                            color: mainTextColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          children: [
                            OtherFunctionPellet(
                              color: color3,
                              text: 'Optimization',
                              icon: Icons.bar_chart_rounded,
                            ),
                            SizedBox(
                              width: 30.0,
                            ),
                            OtherFunctionPellet(
                              color: color1,
                              text: 'Smart Scan',
                              icon: Icons.wifi_tethering,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          children: [
                            OtherFunctionPellet(
                              color: color2,
                              text: 'Malware',
                              icon: Icons.check_circle_outline,
                            ),
                            SizedBox(
                              width: 30.0,
                            ),
                            OtherFunctionPellet(
                                color: color4,
                                text: 'Updater',
                                icon: Icons.refresh),
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          'Statistics of Cleaning',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 16.0,
                            color: mainTextColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          height: 200.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'CURRENT/FRIDAY',
                                        style: TextStyle(
                                          fontSize: 9.0,
                                          color: Colors.black38,
                                        ),
                                      ),
                                      Text(
                                        '58%',
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          color: mainTextColor,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: 60.0,
                                    height: 30.0,
                                    padding: EdgeInsets.all(1.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7.0),
                                      border: Border.all(
                                          color: rightSideBackColor,
                                          width: 2.0),
                                    ),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: color1,
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                            child: Icon(
                                              Icons.bar_chart_rounded,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(7.0),
                                            ),
                                            child: Icon(
                                              Icons.stacked_line_chart_rounded,
                                              color: Colors.black26,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 13.0,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        height: 110.0,
                                        width: 7.0,
                                        decoration: BoxDecoration(
                                          color: rightSideBackColor,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          height: 90.0,
                                          width: 5.0,
                                          decoration: BoxDecoration(
                                            color: color2,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        'MO',
                                        style: TextStyle(
                                          fontSize: 9.0,
                                          color: Colors.black38,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 110.0,
                                        width: 7.0,
                                        decoration: BoxDecoration(
                                          color: rightSideBackColor,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          height: 70.0,
                                          width: 5.0,
                                          decoration: BoxDecoration(
                                            color: color2,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        'TU',
                                        style: TextStyle(
                                          fontSize: 9.0,
                                          color: Colors.black38,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 110.0,
                                        width: 7.0,
                                        decoration: BoxDecoration(
                                          color: rightSideBackColor,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          height: 85.0,
                                          width: 5.0,
                                          decoration: BoxDecoration(
                                            color: color2,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        'WE',
                                        style: TextStyle(
                                          fontSize: 9.0,
                                          color: Colors.black38,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 110.0,
                                        width: 7.0,
                                        decoration: BoxDecoration(
                                          color: rightSideBackColor,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          height: 80.0,
                                          width: 5.0,
                                          decoration: BoxDecoration(
                                            color: color1,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        'TH',
                                        style: TextStyle(
                                          fontSize: 9.0,
                                          color: color1,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 110.0,
                                        width: 7.0,
                                        decoration: BoxDecoration(
                                          color: rightSideBackColor,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          height: 50.0,
                                          width: 5.0,
                                          decoration: BoxDecoration(
                                            color: color2,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        'FR',
                                        style: TextStyle(
                                          fontSize: 9.0,
                                          color: Colors.black38,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 110.0,
                                        width: 7.0,
                                        decoration: BoxDecoration(
                                          color: rightSideBackColor,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          height: 75.0,
                                          width: 5.0,
                                          decoration: BoxDecoration(
                                            color: color2,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        'SA',
                                        style: TextStyle(
                                          fontSize: 9.0,
                                          color: Colors.black38,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 110.0,
                                        width: 7.0,
                                        decoration: BoxDecoration(
                                          color: rightSideBackColor,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          height: 80.0,
                                          width: 5.0,
                                          decoration: BoxDecoration(
                                            color: color2,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        'SU',
                                        style: TextStyle(
                                          fontSize: 9.0,
                                          color: Colors.black38,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OtherFunctionPellet extends StatelessWidget {
  final String text;
  final Color color;
  final IconData icon;
  OtherFunctionPellet({
    this.color,
    this.icon,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 100.0,
        padding: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          children: [
            Container(
              height: 45.0,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(15.0),
              ),
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(8.0)),
                    padding: EdgeInsets.all(2.0),
                    child: Icon(
                      icon,
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Container(
              height: 45.0,
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(text),
                  Icon(Icons.toggle_on),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
