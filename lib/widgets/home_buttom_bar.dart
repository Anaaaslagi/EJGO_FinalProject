import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:tugas3/screens/home_screen.dart';
import 'package:tugas3/screens/location_screen.dart';
import 'package:tugas3/screens/favorite_screen.dart';
import 'package:tugas3/screens/profile_screen.dart';

class HomeBottomBar extends StatefulWidget {
  @override
  _HomeBottomBarState createState() => _HomeBottomBarState();
}

class _HomeBottomBarState extends State<HomeBottomBar> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    LocationScreen(),
    FavoriteScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],  // Menampilkan halaman berdasarkan index
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        index: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;  // Update currentIndex
          });
        },
        items: [
          Icon(Icons.home, size: 30, color: Colors.lightBlue.shade800),
          Icon(Icons.location_on, size: 30, color: Colors.lightBlue.shade800),
          Icon(Icons.favorite, size: 30, color: Colors.lightBlue.shade800),
          Icon(Icons.person, size: 30, color: Colors.lightBlue.shade800),
        ],
      ),
    );
  }
}

