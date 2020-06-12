import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  static const String route = '/account_screen';
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 10),
            Center(child: Text('Sam', style: TextStyle(fontSize: 50))),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: MediaQuery.of(context).size.width * 0.5,
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
                child: Icon(Icons.person, size: 100),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 10, 20, 10),
              child: Text('Age: 67', style: TextStyle(fontSize: 40)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 10, 20, 10),
              child: Text('Blood Type: O-', style: TextStyle(fontSize: 40)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 10, 20, 10),
              child: Text('Weight: 67kg', style: TextStyle(fontSize: 40)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 10, 20, 10),
              child: Text('Caretaker: Jean', style: TextStyle(fontSize: 40)),
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
