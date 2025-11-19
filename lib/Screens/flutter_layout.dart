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
      body: Center(
        child: Container(
          width: 300,
          height: 90,
          
          padding: EdgeInsets.all(20),
        
          decoration:  BoxDecoration(
           border: Border.all(color: Colors.black)
          ),
         
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
        
              Column(
                children: [
                Icon(Icons.call),
                Text("Call")],),
              Spacer(),
              Column(
                children: [
                  Icon(Icons.route),
                  Text("Route")],),
              Spacer(),
              Column(
                children: [
                  Icon(Icons.share),
                  Text("Share")
                  ],
                  )
        
        
            ],
          ),
        ),
      ),
    );
  }
}