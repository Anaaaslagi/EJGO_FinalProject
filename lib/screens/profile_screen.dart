import 'package:flutter/material.dart';
import 'package:tugas3/widgets/home_buttom_bar.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: Center(child: Text("Profile Screen")),
      bottomNavigationBar: HomeButtomBar(),
    );
  }
}
