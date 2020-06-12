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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(child: Text('Sam', style: TextStyle(fontSize: 50))),
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
