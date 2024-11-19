import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class myApp extend StatefulWidget{
  @override
  Widget build(BuildContext context){
    return materialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: color.white,
      ),
      home: WelcomeScreen
    );
  }
}
