import 'package:flutter/material.dart';

class FlutterLayoutScreen extends StatelessWidget {
  const FlutterLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Layout Screen"),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        width: 300,
        height: 200,
        padding: EdgeInsets.only(left: 20,top:50),
        decoration:  BoxDecoration(
         border: Border.all(color: Colors.black)
        ),
       
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            Column(children: [Icon(Icons.call),Text("Call")],),
            Spacer(),
            Column(children: [Icon(Icons.route),Text("Route")],),
            Spacer(),
            

          ],
        ),
      ),
    );
  }
}