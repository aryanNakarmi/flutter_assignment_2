import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.amber[50],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Image.asset('assets/images/image1.png'),
                SizedBox(height: 20,),
                Image.asset('assets/images/image2.png'),
                Image.network('https://upload.wikimedia.org/wikipedia/commons/a/a6/Pink_lady_and_cross_section.jpg'),
                Image.network('https://ichef.bbci.co.uk/ace/standard/976/cpsprodpb/54D3/production/_129951712_2pacgettyimages-76154363.jpg')
              ],
            ),
            
          ),
        ), 
      
        ),
    );
  }
}