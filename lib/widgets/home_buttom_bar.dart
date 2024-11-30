import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:tugas3/screens/home_screen.dart';
import 'package:tugas3/screens/location_screen.dart';
import 'package:tugas3/screens/favorite_screen.dart';
import 'package:tugas3/screens/profile_screen.dart';

class HomeButtomBar extends StatefulWidget {
  @override
  _HomeButtomBarState createState() => _HomeButtomBarState();
}

class _HomeButtomBarState extends State<HomeButtomBar> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    LocationScreen(),
    FavoriteScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Colors.transparent,
      index: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => _pages[index]),
        );
      },
      items: [
        Icon(Icons.home, size: 30, color: Colors.lightBlue.shade800),
        Icon(Icons.location_on, size: 30, color: Colors.lightBlue.shade800),
        Icon(Icons.favorite, size: 30, color: Colors.lightBlue.shade800),
        Icon(Icons.person, size: 30, color: Colors.lightBlue.shade800),
      ],
    );
  }
}
