//import 'package:calendar/calendar.dart';
import 'package:flutter/material.dart';
import 'navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "GROWU FUNDING CALENDAR",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: NavBar(),
      debugShowCheckedModeBanner: false,
    );
  }
}

