import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      body: SafeArea(
        child:Center(
          child: Container(
            child: Text("Hello"),
          ),
          
          
          // child: Container(
          //   width: 200,
          //   height: 200,
          //   alignment: Alignment.center,
          //   child: const Text('I am a container'),
          //   decoration: BoxDecoration(
          //   color: Colors.amberAccent,
          //   shape: BoxShape.circle,
          //     border: Border.all(
          //       color: Colors.black,
          //       width: 2
          //   )
          // ),
          // ),
        ),

      ),
    );
  }
} 