import 'package:VCare/Screens/account_screen.dart';
import 'package:VCare/Screens/call_screen.dart';
import 'package:VCare/Screens/checkin_screen.dart';
import 'package:VCare/Screens/schedule_screen.dart';
import 'package:VCare/Widgets/large_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String route = '/home_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:
                  (MediaQuery.of(context).orientation == Orientation.portrait)
                      ? 2
                      : 3),
          children: <Widget>[
            LargeButton(
              onPress: () => Navigator.pushNamed(context, CheckInScreen.route),
              name: 'Check-in',
              icon: Icon(Icons.alarm, size: 80),
            ),
            LargeButton(
              onPress: () => Navigator.pushNamed(context, CallScreen.route),
              name: 'Call',
              icon: Icon(Icons.call, size: 80),
              color: Colors.purple,
            ),
            LargeButton(
              onPress: () => Navigator.pushNamed(context, ScheduleScreen.route),
              name: 'Schedule',
              icon: Icon(Icons.schedule, size: 80),
              color: Colors.deepOrange[700],
            ),
            LargeButton(
              onPress: () => Navigator.pushNamed(context, AccountScreen.route),
              name: 'Account',
              icon: Icon(Icons.person, size: 80),
              color: Colors.pinkAccent,
            ),
          ],
        ),
      ),
    );
  }
}
