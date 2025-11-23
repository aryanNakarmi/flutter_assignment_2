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
          Container(
            width: double.infinity,
            height: 300,
            color: Colors.green,
            child: Text("Container1"),
          ),
          Expanded(
            
            child: Container(
              height: 300,
              color: Colors.amber,
              width: double.infinity,
              child: Text("Container2"),
            ),
          )
        ], ),
    );
  }
}