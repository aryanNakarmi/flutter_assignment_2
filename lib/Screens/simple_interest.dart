import 'package:flutter/material.dart';

class SimpleInterest extends StatefulWidget {
  const SimpleInterest({super.key});

  @override
  State<SimpleInterest> createState() => _SimpleInterestState();
}

class _SimpleInterestState extends State<SimpleInterest> {
  double principal = 0;
  double rate = 0;
  double time = 0;
  double interest =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Interest"),
        backgroundColor: Colors.blueGrey,centerTitle: true,
      ),
      body: Padding(padding: EdgeInsetsGeometry.all(20),
      child: Column(
        children: [

          SizedBox(height: 20,),

          TextField(
            onChanged: (value) {
              principal =  double.parse(value);
            },
            decoration: InputDecoration(
              labelText: "Enter Principal",
              hintText: "eg. 2000",
              border: OutlineInputBorder()
            ),
          ),

          SizedBox(height: 20,),

          TextField(
            onChanged: (value) {
              rate = double.parse(value);
            },
            decoration: InputDecoration(
              labelText: "Enter Rate",
              border: OutlineInputBorder(),
            ),
          ),

          SizedBox(height: 20,),

          TextField(
            onChanged: (value){
              time = double.parse(value);
            },
            decoration: InputDecoration(
              labelText: "Enter Time",
              border: OutlineInputBorder()
            ),
          ),

          SizedBox(height: 20,),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(onPressed: (){
              setState(() {
                
              interest = (principal*rate*time)/100;
              });
            }, child: Text("Calculate Interest")),
          ),
          Text("Simple Interest: $interest"),
        ],
      ),
      ),

    );
    }
}