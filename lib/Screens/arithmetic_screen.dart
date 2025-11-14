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
        backgroundColor: Colors.tealAccent,
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

              }, child: Text("Sum")),
            ),

              //for Product
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){
                setState(() {
                  result = first * second;
                });

              }, child: Text("Multiply")),
            ),

              //for SUbrraction
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){
                setState(() {
                  result = first - second;
                });

              }, child: Text("Subtract")),
            ),

              //for division
            SizedBox(
              width: double.infinity,

              child: ElevatedButton(onPressed: (){
                setState(() {
                  result = first/second;
                });

              }, child: Text("Divide"),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.cyanAccent),),),
            ),
            
            Text("Result: $result"),
          ],
        ),),

    );
  }
}