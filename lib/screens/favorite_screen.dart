import 'package:flutter/material.dart';
import 'package:tugas3/widgets/home_buttom_bar.dart';

class FavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Favorite")),
      body: Center(child: Text("Favorite Screen")),
      bottomNavigationBar: HomeButtomBar(),
    );
  }
}
