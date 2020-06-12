import 'package:flutter/material.dart';

class CheckInScreen extends StatefulWidget {
  static const String route = '/check_in_screen';
  @override
  _CheckInScreenState createState() => _CheckInScreenState();
}

class _CheckInScreenState extends State<CheckInScreen> {
  bool check1 = false;
  bool check2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: CheckboxListTile(
                    title: Text('10am Check-in'),
                    value: check1,
                    onChanged: (result) {
                      setState(() {
                        check1 = result;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: CheckboxListTile(
                    title: Text('3pm Check-in'),
                    value: check2,
                    onChanged: (result) {
                      setState(() {
                        check2 = result;
                      });
                    },
                  ),
                ),
              ],
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
