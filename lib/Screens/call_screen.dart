import 'package:flutter/material.dart';

class CallScreen extends StatelessWidget {
  static const String route = '/call_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: Text(
                'Jean',
                style: TextStyle(fontSize: 100),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Icon(Icons.phone, size: 200),
            ),
            SizedBox(height: 30),
            Center(
                child: Text(
              '00:05:24', //change to a real time later
              style: TextStyle(fontSize: 50),
            )),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: FlatButton(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'End',
                    style: TextStyle(color: Colors.white, fontSize: 50),
                  ),
                ),
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.3,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                color: Colors.red,
                onPressed: () => Navigator.pop(context),
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
