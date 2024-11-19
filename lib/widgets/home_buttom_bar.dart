import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeButtomBar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return CurvedNavigationBar(
      backgroundColor: Colors.transparent,
      index: 0,
      items: [
        Icon(Icons.home, size: 30, color: Colors.lightBlue.shade800),
        Icon(Icons.location_on, size: 30, color: Colors.lightBlue.shade800),
        Icon(Icons.favorite, size: 30, color: Colors.lightBlue.shade800),
        Icon(Icons.person, size: 30, color: Colors.lightBlue.shade800),
      ],
    );
  }
}