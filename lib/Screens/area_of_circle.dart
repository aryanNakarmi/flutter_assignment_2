import 'package:flutter/material.dart';

class AreaOfCircle extends StatefulWidget {
  const AreaOfCircle({super.key});

  @override
  State<AreaOfCircle> createState() => _AreaOfCircleState();
}

class _AreaOfCircleState extends State<AreaOfCircle> {
  double radius = 0 ;
  double area = 0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Area of Circle"),
        backgroundColor: Colors.green, centerTitle: true,
  
      ),
      body: Padding(padding: EdgeInsetsGeometry.all(20),
      child: Column(
        children: [

          TextField(
            onChanged: (value) {
              radius = double.parse(value);
            },
            decoration: InputDecoration(
              labelText: "Enter Radius of Circle",
              hintText: "e.g. 4",
              border: OutlineInputBorder(),
            ),
          ),

          SizedBox(height: 40,),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(onPressed: (){
                setState(() {
                  
                  area = 3.14 * radius * radius;
                });
            }, child: Text("Calculate Area", style: TextStyle(color: Colors.black))),
          ),

          SizedBox(height: 30,),

          Text("Area of Circle: $area")
        ],
      ),),
    );
  }
}