import 'package:flutter/material.dart';
import 'package:flutter_assignment_2/Common/my_snackbar.dart';

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
              onTap: ()=> showMySnackBar(context: context, message: "Container1"),
              child: Container(
                alignment: Alignment
                .center,
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

              onTap: ()=> showMySnackBar(context: context, 
              message: "Container 2",
              color: Colors.blue),
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