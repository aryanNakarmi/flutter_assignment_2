import 'package:flutter/material.dart';
import 'package:flutter_assignment_2/Widgets/my_button.dart';
import 'package:flutter_assignment_2/Widgets/my_textfield.dart';


class CustomLayoutscreen extends StatelessWidget {
  const CustomLayoutscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Buttom Screen"),
      ),
      body: Center(
        child: Row(
          children: [
          
           MyTextfield(onChanged: (value){
            setState((){
              name = value;
            });
           }, text: "Enter Name"),
           MyButton(onPressed: (){}, text: 'Click Me'),

          ],
        ),


      ),
    );
  }
}