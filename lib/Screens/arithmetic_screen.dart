import 'package:flutter/material.dart';

class ArithmeticScreen extends StatefulWidget {
  const ArithmeticScreen({super.key});

  @override
  State<ArithmeticScreen> createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<ArithmeticScreen> {
  double first = 0;
  double second = 0;
  
  double result = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Arithmetic Screen"),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.all(20),
        child: Column(
          children: [
            SizedBox(height: 20,),

            TextField(
            
              onChanged: (value) {
                first = double.parse(value);
              },
              decoration: InputDecoration(
                labelText: "Enter First Number",
                hintText: "e.g. 2",
              
              ),
            ),
            
            SizedBox(height: 20,),

            TextField(
              onChanged: (value) {
                second = double.parse(value);
              },
              decoration: InputDecoration(
                labelText: "Enter Second Number",
              
              ),
            ),

            SizedBox(height: 20,),


              //for Sum
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){
                setState(() {
                  result = first+ second;
                });

              }, child: Text("Sum", style: TextStyle(color: Colors.black),)),
            ),

              //for Product
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){
                setState(() {
                  result = first * second;
                });

              }, child: Text("Multiply", style: TextStyle(color: Colors.black))),
            ),

              //for SUbrraction
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){
                setState(() {
                  result = first - second;
                });

              }, child: Text("Subtract", style: TextStyle(color: Colors.black))),
            ),

              //for division
            SizedBox(
              width: double.infinity,

              child: ElevatedButton(onPressed: (){
                setState(() {
                  result = first/second;
                });

              }, child: Text("Divide", style: TextStyle(color: Colors.black)),
             ),
            ),
            
            Text("Result: $result"),
          ],
        ),),

    );
  }
}