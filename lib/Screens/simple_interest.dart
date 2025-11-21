import 'package:flutter/material.dart';

class SimpleInterest extends StatefulWidget {
  const SimpleInterest({super.key});

  @override
  State<SimpleInterest> createState() => _SimpleInterestState();
}

class _SimpleInterestState extends State<SimpleInterest> {
  // double principal = 0;
  // double rate = 0;
  // double time = 0;

  final  TextEditingController principalController = TextEditingController(text: "2");
  final TextEditingController rateController = TextEditingController(text:"1");
  final TextEditingController timeController = TextEditingController(text:"1");
  double interest =0;

   final _formKey = GlobalKey<FormState>();
  //  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Interest"),
        backgroundColor: Colors.blueGrey,centerTitle: true,
      ),
      body: Padding(padding: EdgeInsetsGeometry.all(20),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
        
            SizedBox(height: 20,),
        
            TextField(
              controller: principalController,
              decoration: InputDecoration(
                labelText: "Enter Principal",
                hintText: "eg. 2000",
                border: OutlineInputBorder()
              ),
            ),
        
            SizedBox(height: 20,),
        
            TextField(
              controller: rateController,
              decoration: InputDecoration(
                labelText: "Enter Rate",
                border: OutlineInputBorder(),
              ),
            ),
        
            SizedBox(height: 20,),
        
            TextField(
              controller: timeController,
              decoration: InputDecoration(
                labelText: "Enter Time",
                border: OutlineInputBorder()
              ),
            ),
        
            SizedBox(height: 20,),
        
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){
                if(_formKey.currentState!.validate()){
                setState(() {
                  
                double principal = double.parse(principalController.text);
                double rate = double.parse(rateController.text);
                double time = double.parse(timeController.text);
                interest = (principal*rate*time)/100;
                });

                }
              }, child: Text("Calculate Interest")),
            ),
            Text("Simple Interest: $interest"),
          ],
        ),
      ),
      ),

    );
    }
}