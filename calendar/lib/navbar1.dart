import 'package:calendar/calendar.dart';
import 'package:calendar/page/Profile.dart';
import 'package:calendar/page/chat.dart';
import 'package:calendar/page/dashboard.dart';
//import 'package:calendar/page/settings.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  @override
  State createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  int currentTab = 0;
  final List<Widget> screens = [
    Dashboard(),
    Profile(),
    Calendar(),
    Chat()

  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Calendar();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageStorage(
          child: currentScreen,
          bucket: bucket,
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {},
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            notchMargin: 10,
            child: Container(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(
                        minWidth: 40,
                        onPressed:() {
                          setState(() {
                            currentScreen = Calendar();
                            currentTab = 0;
                          });
                        },
                        child: Column (
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.calendar_month,
                              color: currentTab == 0 ? Colors.blue : Colors.grey,
                            ),
                            Text(
                              "Calendar",
                              style: TextStyle(color: currentTab == 0 ? Colors.blue : Colors.grey),
                            )
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 40,
                        onPressed:() {
                          setState(() {
                            currentScreen = Dashboard();
                            currentTab = 1;
                          });
                        },
                        child: Column (
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.dashboard,
                              color: currentTab == 1 ? Colors.blue : Colors.grey,
                            ),
                            Text(
                              "Dashboard",
                              style: TextStyle(color: currentTab == 1 ? Colors.blue : Colors.grey),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                //Right Tab bar Icons
                Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(
                        minWidth: 40,
                        onPressed:() {
                          setState(() {
                            currentScreen = Chat();
                            currentTab = 2;
                          });
                        },
                        child: Column (
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.chat,
                              color: currentTab == 2 ? Colors.blue : Colors.grey,
                            ),
                            Text(
                              "Chat",
                              style: TextStyle(color: currentTab == 2 ? Colors.blue : Colors.grey),
                            )
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 40,
                        onPressed:() {
                          setState(() {
                            currentScreen = Profile();
                            currentTab = 3;
                          });
                        },
                        child: Column (
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.dashboard,
                              color: currentTab == 3 ? Colors.blue : Colors.grey,
                            ),
                            Text(
                              "Profile",
                              style: TextStyle(color: currentTab == 3 ? Colors.blue : Colors.grey),
                            )
                          ],
                        ),
                      )
                    ],
                  ),

                ],
              ),
            ), 
            ),
    );
  }
}