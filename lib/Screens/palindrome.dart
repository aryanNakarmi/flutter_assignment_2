import 'package:flutter/material.dart';

class Palindrome extends StatefulWidget {
  const Palindrome({super.key});

  @override
  State<Palindrome> createState() => _PalindromeState();
}

class _PalindromeState extends State<Palindrome> {
  final TextEditingController  number = TextEditingController(text: "1");
  // int number = 0;
 
  String result = "";
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Palindrome")
      ),
      body: 
      Padding(
        padding: EdgeInsetsGeometry.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
            
                TextFormField(
                  controller: number,
                  decoration: InputDecoration(
                    labelText: "Enter a Number",
                    hintText: "eg. 151",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if(value==null || value.isEmpty){
                      return "please enter a number";
                    }
                    return null;
                  },
                  
                ),
                SizedBox(height: 30,),
            
                SizedBox(
            
                  child: ElevatedButton(onPressed: (){
                    if(_formKey.currentState!.validate()){

                    setState(() {
                      int num = int.parse(number.text);
                      int temp = num;
                       int reversedNum = 0;
            
                      while(temp>0){
                        int digit  = temp%10;
                        reversedNum = (reversedNum*10)+digit;
                        temp= temp~/10;
                      }
                      if(number == reversedNum){
                        result = "$number is a palindrome";
                      }
                      else{
                        result = "$number isn't a palindrome";
                      }
                      
                    });
                    }
                  }, child: Text("Check if the Number is Palindrome", style: TextStyle(color: Colors.black))),
                ),
            
                Text(" $result"),
              ],
            
                    ),
          ),),
    );
  }
}