import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tugas3/screens/landingpage_screen.dart';
import 'package:tugas3/screens/location_screen.dart';
import 'package:tugas3/screens/login_screen.dart';
import 'package:tugas3/screens/signup_screen.dart';
import 'package:tugas3/screens/welcome_screen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget{
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  void initState(){
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }
    @override
    Widget build(BuildContext context){
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Color(0xFFEDF2F6),
        ),
        home: const LandingpageScreen()
      );
    }
}