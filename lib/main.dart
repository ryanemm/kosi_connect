import 'package:flutter/material.dart';
import 'package:kosi_connect/home_screen.dart';
import 'package:kosi_connect/parasite.dart';
// import 'package:responsive_framework/responsive_wrapper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kosi Connect',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
