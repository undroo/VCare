import 'package:VCare/Screens/account_screen.dart';
import 'package:VCare/Screens/call_screen.dart';
import 'package:VCare/Screens/home_screen.dart';
import 'package:VCare/Screens/schedule_screen.dart';
import 'package:flutter/material.dart';

import 'Screens/checkin_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VCare',
      theme: ThemeData.dark(),
      home: HomeScreen(),
      routes: {
        HomeScreen.route: (context) => HomeScreen(),
        CheckInScreen.route: (context) => CheckInScreen(),
        ScheduleScreen.route: (context) => ScheduleScreen(),
        AccountScreen.route: (context) => AccountScreen(),
        CallScreen.route: (context) => CallScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
