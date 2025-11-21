import 'package:flutter/material.dart';

class ArithmeticScreen extends StatefulWidget {
  const ArithmeticScreen({super.key});

  @override
  State<ArithmeticScreen> createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<ArithmeticScreen> {
  // double first = 0;
  // double second = 0;
  
  // Controller
  final TextEditingController firstController = TextEditingController(text:"1");
  final TextEditingController secondController = TextEditingController(text:"1");
  double result = 0;

  // Global key for form state
  final _formKey = GlobalKey<FormState>();
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
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(height: 20,),
          
              TextFormField(
              
                keyboardType: TextInputType.number,
                controller: firstController,
                decoration: InputDecoration(
                  labelText: "Enter First Number",
                  hintText: "e.g. 2",
                 
                ),
                validator: (value){
                  if(value == null || value.isEmpty){
                    return "Please enter first number";
                  }
                  return null;
                },
              ),
              
              SizedBox(height: 20,),
          
              TextFormField(
                keyboardType: TextInputType.number,
                controller: secondController,
                decoration: InputDecoration(
                  labelText: "Enter Second Number",
                
                ),
                validator: (value) {
                  if(value == null || value.isEmpty){
                    return "Please enter second number";
                  }
                  return null;
                },
              ),
          
              SizedBox(height: 20,),
          
          
                //for Sum
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){
                  if(_formKey.currentState!.validate()){
                    setState(() {
                      double first = double.parse(firstController.text);
                      double second = double.parse(firstController.text);
                      result = first+second;  
                    });
                  }
                }, child: Text("Sum", style: TextStyle(color: Colors.black),)),
              ),
          
                //for Product
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){
                  if(_formKey.currentState!.validate()){
                    setState(() {
                      double first = double.parse(firstController.text);
                      double second = double.parse(firstController.text);
                      result = first*second;  
                    });
                  }
          
                }, child: Text("Multiply", style: TextStyle(color: Colors.black))),
              ),
          
                //for SUbrraction
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){
                  if(_formKey.currentState!.validate()){
                    setState(() {
                      double first = double.parse(firstController.text);
                      double second = double.parse(firstController.text);
                      result = first-second;  
                    });
                  }
                }, child: Text("Subtract", style: TextStyle(color: Colors.black))),
              ),
          
                //for division
              SizedBox(
                width: double.infinity,
          
                child: ElevatedButton(onPressed: (){
                  if(_formKey.currentState!.validate()){
                    setState(() {
                      double first = double.parse(firstController.text);
                      double second = double.parse(firstController.text);
                      result = first/second;  
                    });
                  }
          
                }, child: Text("Divide", style: TextStyle(color: Colors.black)),
               ),
              ),
              
              Text("Result: $result"),
            ],
          ),
        ),),

    );
  }
}