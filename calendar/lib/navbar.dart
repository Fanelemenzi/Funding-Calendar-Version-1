import 'dart:io';

import 'package:flutter/material.dart';
import 'package:calendar/calendar.dart';
import 'package:calendar/page/Profile.dart';
import 'package:calendar/page/chat.dart';
import 'package:calendar/page/dashboard.dart';

class NavBar extends StatefulWidget {

  @override
  _NavBar createState() => _NavBar();
}

class _NavBar extends State<NavBar> {

  int currentTab = 0;
  final List<Widget> screens = [
    Dashboard(),
    Profile(),
    Calendar(),
    Chat()

  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          screens.elementAt(currentTab),
           Align(
            alignment: Alignment(0.0, 1.0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
              child: BottomNavigationBar(
                selectedItemColor: Colors.blue,
                unselectedItemColor: Colors.grey,
                showSelectedLabels: true,
                showUnselectedLabels: false,
                backgroundColor: Colors.black,
                currentIndex: currentTab,
                onTap: (int index){
                  setState(() {
                    currentTab = index;
                  });
                }, items: [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.calendar_month),
                    label: "Calendar"
                    ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.dashboard),
                    label: "Dashboard"
                    ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.dashboard),
                    label: "Profile"
                    ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.chat),
                    label: "Chat"
                    ),
                ],
              ),
              ),
          )
        ],
      )
    );
  }
}