import 'package:flutter/material.dart';

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
              onPressed: (){},
               child: Text("Arithmetic Screen")),
            ),

            SizedBox(height: 20,),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(onPressed: (){},
               child: Text("Simple Interest Screen")),
            ),

            SizedBox(height: 20,),

            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: (){},
               child: Text("Palindrome")),
            ),

            SizedBox(height: 20,),

            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: (){},
               child: Text("Area of Circle")),
            )

          ],
        ),

      ),
    );
  } 
}