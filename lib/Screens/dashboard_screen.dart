import 'package:flutter/material.dart';
import 'package:flutter_assignment_2/Screens/area_of_circle.dart';
import 'package:flutter_assignment_2/Screens/arithmetic_screen.dart';
import 'package:flutter_assignment_2/Screens/column_screen.dart';
import 'package:flutter_assignment_2/Screens/container_screen.dart';
import 'package:flutter_assignment_2/Screens/flutter_layout.dart';
import 'package:flutter_assignment_2/Screens/palindrome.dart';
import 'package:flutter_assignment_2/Screens/rich_text.dart';
import 'package:flutter_assignment_2/Screens/simple_interest.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard", style: TextStyle(color: Colors.white),),
      backgroundColor: Colors.black,
       centerTitle: true,),
    
      body: Padding(
        padding: EdgeInsetsGeometry.all(10),
        child: Column(
          children: [
            SizedBox(height: 20,),
          
            SizedBox(
              width: double.infinity,        
              child: ElevatedButton(
            
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              onPressed: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=> const ArithmeticScreen()));
              },
               child: Text("Arithmetic Screen",style: TextStyle(color: Colors.white)),
               
               ),
            ),

            SizedBox(height: 20,),
            SizedBox(
              width: double.infinity,
         
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
                onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> const SimpleInterest())
                );
              },
               child: Text("Simple Interest Screen", style: TextStyle(color: Colors.white),)),
            ),

            SizedBox(height: 20,),

            SizedBox(
              width: double.infinity,
        
              child: ElevatedButton(
            
                style: ElevatedButton.styleFrom(side: BorderSide(width: 2)),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Palindrome()));
                },
               child: Text("Palindrome",style: TextStyle(color: Colors.black),)),
            ),

            SizedBox(height: 20,),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AreaOfCircle())) ;
                },
               child: Text("Area of Circle", 
               style: TextStyle(color: Colors.white)),),
            ),


            SizedBox(height: 20,),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue[600]),
                onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>RichTextScreen()));
              }, child: Text("Rich Text Screen", style: TextStyle(color: Colors.white),)),
            ),

            SizedBox(height: 20,),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>FlutterLayoutScreen()));
              }, child: Text("Flutter Screen", style: TextStyle(color: Colors.white),)),
            ),

            SizedBox(height: 20,),

            SizedBox(width:double.infinity,
            child: ElevatedButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>ColumnScreen()));
            }, child: Text("Column Screen")), ),

            SizedBox(height: 20,),
            SizedBox(
              child: ElevatedButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>ContainerScreen()));
              }, child: Text("Container Screen")),
            )


          ],
        ),
      ),
    );
  } 
}