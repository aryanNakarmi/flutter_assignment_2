import 'package:flutter/material.dart';
import 'package:flutter_assignment_2/Screens/area_of_circle.dart';
import 'package:flutter_assignment_2/Screens/arithmetic_screen.dart';
import 'package:flutter_assignment_2/Screens/dashboard_screen.dart';
import 'package:flutter_assignment_2/Screens/simple_interest.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AreaOfCircle(),
      
    );
  }
}