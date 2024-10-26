import 'package:flutter/material.dart';
// import 'package:weatherapp/view/homepage.dart';
import 'package:weatherapp/view/splashscreen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Weather App",
      home: SplashScreen(),
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
    );
  }
}