import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.amber[50],
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Image.asset('assets/images/image1.png'),
              Image.asset('assets/images/image2.png')
            ],
          ),
          
        ), 
      
        ),
    );
  }
}