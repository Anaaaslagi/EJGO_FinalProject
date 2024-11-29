import 'package:flutter/material.dart';
import 'package:tugas3/widgets/home_buttom_bar.dart';

class LocationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Location")),
      body: Center(child: Text("Location Screen")),
      bottomNavigationBar: HomeButtomBar(),
    );
  }
}
