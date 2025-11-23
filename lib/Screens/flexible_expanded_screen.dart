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
            flex: 1,
            child: GestureDetector(
              onTap: ()=> ScaffoldMessenger.of(context).showSnackBar(
                const  SnackBar(content: Text("Container 1"),
                backgroundColor: Colors.green,
                duration: Duration(seconds: 3),
                behavior: SnackBarBehavior.floating,)
              ),
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                color: Colors.green,
                child: Text("1",style: TextStyle(fontSize: 25),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: GestureDetector(

              onTap: ()=> ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Container 2",style: TextStyle(fontSize: 20),),
                duration: Duration(seconds: 2),
                behavior: SnackBarBehavior.floating,
                backgroundColor: Colors.blue,)
              ),
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                color: Colors.amber,
                child: Text("2",style: TextStyle(fontSize: 25)),
              ),
            ),
          )
        ], ),
    );
  }
}