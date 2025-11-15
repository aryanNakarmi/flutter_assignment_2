import 'package:flutter/material.dart';
import 'package:flutter_assignment_2/Screens/area_of_circle.dart';
import 'package:flutter_assignment_2/Screens/arithmetic_screen.dart';
import 'package:flutter_assignment_2/Screens/palindrome.dart';
import 'package:flutter_assignment_2/Screens/simple_interest.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard"),
      backgroundColor: Colors.amberAccent,),
      body: Padding(
        padding: EdgeInsetsGeometry.all(10),
        child: Column(
          children: [
            SizedBox(height: 20,),
          
            SizedBox(
              width: 200,
              height: 50,
              
              child: ElevatedButton(
              onPressed: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=> const ArithmeticScreen()));
              },
               child: Text("Arithmetic Screen")),
            ),

            SizedBox(height: 20,),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> const SimpleInterest())
                );
              },
               child: Text("Simple Interest Screen")),
            ),

            SizedBox(height: 20,),

            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Palindrome()));
                },
               child: Text("Palindrome")),
            ),

            SizedBox(height: 20,),

            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AreaOfCircle())) ;
                },
               child: Text("Area of Circle")),
            )

          ],
        ),

      ),
    );
  } 
}