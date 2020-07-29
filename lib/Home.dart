import 'package:banking_app_ui/Screens/cards.dart';
import 'package:banking_app_ui/Screens/history.dart';
import 'package:banking_app_ui/Screens/mainHome.dart';
import 'package:banking_app_ui/Screens/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Screens/homePage.dart';
import 'constants.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 2;
  final List<Widget> pages = [
    MainHome(),
    History(),
    Homepage(),
    CardsMain(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        iconSize: 20,
        selectedFontSize: 15.0,
        selectedLabelStyle: TextStyle(color: Colors.blue.shade900),
        selectedItemColor: Colors.blue.shade900,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              title: Text(
                'home',
                style: kTextSmall,
              ),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.monetization_on,
            ),
            title: Text(
              'history',
              style: kTextSmall,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle,
              size: 40,
            ),
            title: Text(
              ' ',
              style: kTextSmall,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.credit_card,
            ),
            title: Text(
              'cards',
              style: kTextSmall,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
            ),
            title: Text(
              'profile',
              style: kTextSmall,
            ),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
