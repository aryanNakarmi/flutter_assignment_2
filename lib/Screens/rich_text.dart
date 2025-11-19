import 'package:flutter/material.dart';

class RichTextScreen extends StatelessWidget {
  const RichTextScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Text Class"),
        backgroundColor: Colors.blue[600],
      ),
      body: RichText(
        text: const TextSpan(
          text: "",
          style: TextStyle(
            color: Color.fromARGB(255, 244, 68, 68),
            fontSize: 30,
          ),

          

            children: <TextSpan>[
            TextSpan(text: "bold",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.pink
            )
            )
            ,
          TextSpan(
            text: " world!!!",

          )
          ],


         )
      ),
    );
    
  }
}