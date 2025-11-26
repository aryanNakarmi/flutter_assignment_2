import 'package:flutter/material.dart';
import 'package:flutter_assignment_2/Widgets/my_button.dart';


class CustomLayoutscreen extends StatelessWidget {
  const CustomLayoutscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Buttom Screen"),
      ),
      body: Center(
        child: MyButton(onPressed: (){}, text: 'Click Me'),
      ),
    );
  }
}