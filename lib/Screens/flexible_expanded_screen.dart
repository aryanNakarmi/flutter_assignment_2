import 'package:flutter/material.dart';

class FlexibleExpandedScreen extends StatelessWidget {
  const FlexibleExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Flexible Expanded Screen",
        style: TextStyle(color: Colors.white),
      ),),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.green,
              child: Text("Container1"),
            ),
          ),
          Expanded(
            child: Container(
        
              color: Colors.amber,
              child: Text("Container2"),
            ),
          )
        ], ),
    );
  }
}