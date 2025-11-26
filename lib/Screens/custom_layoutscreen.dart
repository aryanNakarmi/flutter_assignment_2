import 'package:flutter/material.dart';
import 'package:flutter_assignment_2/Widgets/my_button.dart';
import 'package:flutter_assignment_2/Widgets/my_textfield.dart';


class CustomLayoutscreen extends StatefulWidget {
  const CustomLayoutscreen({super.key});

  @override
  State<CustomLayoutscreen> createState() => _CustomLayoutscreenState();
}

class _CustomLayoutscreenState extends State<CustomLayoutscreen> {
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Buttom Screen"),
      ),
      body: Center(
        child: Column(
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