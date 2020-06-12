import 'package:flutter/material.dart';

class ScheduleScreen extends StatefulWidget {
  static const String route = '/schedule_screen';

  @override
  _ScheduleScreenState createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  int day = 0;
  int month = 0;
  int year = 0;
  List<Widget> meetingList = <Widget>[
    ScheduleTile(text: 'Meeting with Karen at 10:30am 14 June'),
    SizedBox(height: 10),
    ScheduleTile(text: 'Meeting with Jean at 2:45pm 16 June'),
    SizedBox(height: 10),
    ScheduleTile(text: 'Meeting with Karen at 4:00pm 16 June'),
    SizedBox(height: 10),
    ScheduleTile(text: 'Meeting with Karen at 9:00am 17 June'),
  ];

  void addSchedule() async {
    var result = await showDatePicker(
        context: context,
        initialDate: DateTime(2020, 6, 12),
        firstDate: DateTime(2020, 6, 1),
        lastDate: DateTime(2020, 6, 30));
    if (result != null) {
      setState(() {
        meetingList.add(SizedBox(height: 10));
        meetingList.add(ScheduleTile(
            text: 'Meeting with Jean at 10:00am ${result.day} June'));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[400],
                shape: BoxShape.circle,
              ),
              child: FlatButton(
                child: Icon(Icons.add, size: 150),
                onPressed: addSchedule,
                shape: CircleBorder(
                  side: BorderSide(color: Colors.black, width: 1.5),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(
                    color: Colors.black,
                    width: 0.5,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Upcoming Schedule',
                      style: TextStyle(color: Colors.black)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black,
                    width: 0.5,
                  ),
                ),
                padding: EdgeInsets.all(20),
                child: Column(
                  children: meetingList,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: FlatButton(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Back',
                    style: TextStyle(color: Colors.white, fontSize: 50),
                  ),
                ),
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.grey,
                      width: 0.3,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                color: Colors.blue,
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ScheduleTile extends StatelessWidget {
  ScheduleTile({this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.black,
          width: 0.5,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Text(
              text,
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
