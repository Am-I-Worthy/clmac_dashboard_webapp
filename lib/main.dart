import 'package:flutter/material.dart';

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
                  style: TextStyle(
                    fontSize: 20.0,
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
                    color: Colors.blue[50],
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.calendar_today,
                        size: 20.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'Month',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15.0),
              height: 1.0,
              color: Colors.black54,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal : 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CalendarPellet(),
                  CalendarPellet(),
                  CalendarPellet(),
                  CalendarPellet(),
                  CalendarPellet(),
                  CalendarPellet(),
                  CalendarPellet(),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15.0),
              height: 1.0,
              color: Colors.black54,
            ),
            Row(
              children: [
                Text(
                  'Weekly Reports',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Spacer(),
                Text(
                  'Today',
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Colors.black45,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(width: 10.0),
                Text(
                  'Week',
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(width: 10.0),
                Text(
                  'Month',
                  style: TextStyle(
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
                  WeeklyReportCards(),
                  WeeklyReportCards(),
                  WeeklyReportCards(),
                  WeeklyReportCards(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CalendarPellet extends StatelessWidget {
  const CalendarPellet({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Mon',
            style: TextStyle(
              fontSize: 13.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            '2',
            style: TextStyle(
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
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}

class WeeklyReportCards extends StatefulWidget {
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
        height: exit ? 150.0 : 170.0,
        width: 130.0,
        decoration: BoxDecoration(
          color: exit ? Color(0xfffafafa) : Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(
            color: exit ? Colors.black12 : Colors.transparent,
          ),
          boxShadow: exit ? [] : [
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
                  color: !exit ? Colors.transparent : Colors.amber,
                ),
                  color: !exit ? Colors.amber : Colors.white,
                  borderRadius: BorderRadius.circular(10.0)),
              child: Icon(
                Icons.delete_outline,
                size: 20.0,
                color: !exit ? Colors.white : Colors.amber,
              ),
            ),
            Spacer(),
            Text(
              'System Junk',
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
            Spacer(),
            FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              padding: EdgeInsets.all(0.0),
              onPressed: () {},
              color: exit ? Colors.transparent : Colors.amber,
              child: Container(
                height: 55.0,
                width: 120.0,
                child: Center(
                  child: Text('35 Gb',style: TextStyle(
                    fontSize: 20.0
                  ),),
                ),
              ),
            ),
            SizedBox(
              height: 3.0,
            ),
          ],
        ),
      ),
    );
  }
}
