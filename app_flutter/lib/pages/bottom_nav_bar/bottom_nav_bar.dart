//File containing code for bottom navigation bar

import 'package:flutter/material.dart';
import 'package:swiggy/constants.dart';
import 'package:swiggy/pages/home_page/home_page.dart';
import 'package:swiggy/pages/profile_page/profile_page.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({Key? key}) : super(key: key);
  static int index = 1;

  @override
  _MyBottomNavBarState createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: MyBottomNavBar.index,
      showSelectedLabels: false,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          label: 'home',
          icon: Icon(
            Icons.home,
            color: black,
          ),
        ),
        BottomNavigationBarItem(
          label: 'search',
          icon: Icon(
            Icons.search_rounded,
            color: black,
          ),
        ),
        BottomNavigationBarItem(
          label: 'cart',
          icon: Icon(
            Icons.shopping_bag_rounded,
            color: black,
          ),
        ),
        BottomNavigationBarItem(
          label: 'account',
          icon: Icon(
            Icons.person,
            color: black,
          ),
        ),
      ],
      onTap: (int index) {
        setState(() {
          MyBottomNavBar.index = index;

          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            );
          } else if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProfilePage(),
              ),
            );
          }
        });
      },
    );
  }
}
