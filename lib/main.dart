import 'package:clmac_dashboard_webapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width * 0.5,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              height: 150.0,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                Text(
                  'December 2-8',
                  style: GoogleFonts.nunitoSans(
                    fontSize: 20.0,
                    color: mainTextColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Container(
                  height: 20.0,
                  width: 34.0,
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.chevron_left,
                        color: Colors.white,
                        size: 16.0,
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: Colors.white54,
                        size: 16.0,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  height: 45.0,
                  width: 120.0,
                  decoration: BoxDecoration(
                    color: monthButtonColor,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.calendar_today,
                        size: 18.0,
                        color: mainTextColor
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'Month',
                        style: GoogleFonts.nunitoSans(fontSize: 16.0,
                        color: Colors.black26,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15.0),
              height: 1.0,
              color: Colors.black12,
            ),
            Container(
              height: 75.0,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CalendarPellet(
                    text: 'Mon',
                    subText: '2',
                    color: color1,
                  ),
                  CalendarPellet(
                    text: 'Tue',
                    subText: '3',
                    color: color2,
                  ),
                  CalendarPellet(
                    text: 'Wed',
                    subText: '4',
                    color: color3,
                  ),
                  CalendarPellet(text: 'Thu',
                    subText: '5',
                    color: color4,),
                  CalendarPellet(
                    text: 'Fri',
                    subText: '6',
                    color: color1,
                  ),
                  CalendarPellet(
                    text: 'Sat',
                    subText: '7',
                    color: color2,
                  ),
                  CalendarPellet(
                    text: 'Sun',
                    subText: '8',
                    color: color3,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15.0),
              height: 1.0,
              color: Colors.black12,
            ),
            Row(
              children: [
                Text(
                  'Weekly Reports',
                  style: GoogleFonts.nunitoSans(
                    fontSize: 16.0,
                    color: mainTextColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Spacer(),
                Text(
                  'Today',
                  style: GoogleFonts.nunitoSans(
                    fontSize: 13.0,
                    color: Colors.black45,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(width: 10.0),
                Text(
                  'Week',
                  style: GoogleFonts.nunitoSans(
                    fontSize: 13.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(width: 10.0),
                Text(
                  'Month',
                  style: GoogleFonts.nunitoSans(
                    fontSize: 13.0,
                    color: Colors.black45,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 170.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  WeeklyReportCards(
                    text: 'System Junk',
                    buttonText: '35 Gb',
                    color: color1,
                    icon: Icons.delete_outline,
                  ),
                  WeeklyReportCards(
                    text: 'iTunes Junk',
                    buttonText: '1.25 Gb',
                    color: color3,
                    icon: Icons.music_note,
                  ),
                  WeeklyReportCards(
                    text: 'Trash Bins',
                    buttonText: '16.35 Gb',
                    color: color2,
                    icon: Icons.delete,
                  ),
                  WeeklyReportCards(
                    text: 'Photo Junk',
                    buttonText: '12.10 Gb',
                    color: color4,
                    icon: Icons.photo,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CalendarPellet extends StatefulWidget {
  final String text;
  final String subText;
  final Color color;
  CalendarPellet({
    this.color,
    this.subText,
    this.text,
  });
  @override
  _CalendarPelletState createState() => _CalendarPelletState();
}

class _CalendarPelletState extends State<CalendarPellet> {
  bool exit = true;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (value) {
        setState(() {
          exit = false;
        });
      },
      onExit: (v) {
        setState(() {
          exit = true;
        });
      },
      child: AnimatedContainer(
        height: exit ? 60.0 : 75.0,
        width: exit ? 40.0 : 45.0,
        duration: Duration(milliseconds: 200),
        decoration: BoxDecoration(
          color: exit ? Colors.white : color3,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: exit ? [] : [
            BoxShadow(
              color: color3,
              blurRadius: 10.0,
            ),
          ]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.text,
              style: GoogleFonts.nunitoSans(
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold,
                  color: exit ? Color(0xff45417C) : Colors.white),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              widget.subText,
              style: GoogleFonts.nunitoSans(
                color: exit ? Colors.black87 : Colors.white,
                fontSize: 14.0,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              height: 4.0,
              width: 4.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: exit ? widget.color : Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class WeeklyReportCards extends StatefulWidget {
  final String text;
  final Color color;
  final String buttonText;
  final IconData icon;
  WeeklyReportCards({
    this.buttonText,
    this.color,
    this.text,
    this.icon,
  });
  @override
  _WeeklyReportCardsState createState() => _WeeklyReportCardsState();
}

class _WeeklyReportCardsState extends State<WeeklyReportCards> {
  bool exit = true;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (value) {
        setState(() {
          exit = false;
        });
      },
      onExit: (value) {
        setState(() {
          exit = true;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        height: exit ? 145.0 : 170.0,
        width: 130.0,
        decoration: BoxDecoration(
          color: exit ? Colors.white : Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(
            color: exit ? Colors.black12 : Colors.transparent,
          ),
          boxShadow: exit
              ? []
              : [
                  BoxShadow(
                    spreadRadius: 1.0,
                    blurRadius: 20.0,
                    color: Colors.grey[200],
                  ),
                ],
        ),
        child: Column(
          children: [
            AnimatedContainer(
              duration: Duration(milliseconds: 200),
              margin: EdgeInsets.only(top: 15.0),
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: !exit ? Colors.transparent : widget.color,
                  ),
                  color: !exit ? widget.color : Colors.white,
                  borderRadius: BorderRadius.circular(10.0)),
              child: Icon(
                widget.icon,
                size: 20.0,
                color: !exit ? Colors.white : widget.color,
              ),
            ),
            Spacer(),
            Text(
              widget.text,
              style: GoogleFonts.nunitoSans(
                fontSize: 15.0,
                color: mainTextColor,
              ),
            ),
            Spacer(),
            FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              padding: EdgeInsets.all(0.0),
              onPressed: () {},
              color: exit ? Colors.transparent : widget.color,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 200),
                height: exit ? 40 : 55.0,
                width: 120.0,
                child: Center(
                  child: Text(
                    widget.buttonText,
                    style: GoogleFonts.nunitoSans(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      color: exit ? mainTextColor : Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
          ],
        ),
      ),
    );
  }
}
