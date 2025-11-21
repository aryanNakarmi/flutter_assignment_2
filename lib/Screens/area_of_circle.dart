import 'package:flutter/material.dart';

class AreaOfCircle extends StatefulWidget {
  const AreaOfCircle({super.key});

  @override
  State<AreaOfCircle> createState() => _AreaOfCircleState();
}

class _AreaOfCircleState extends State<AreaOfCircle> {
  // double radius = 0 ;
  final TextEditingController radiusController = TextEditingController(text: "2");
  double area = 0 ;

  final _formKey= GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Area of Circle"),
        backgroundColor: Colors.green, centerTitle: true,
  
      ),
      body: Padding(padding: EdgeInsetsGeometry.all(20),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
        
            TextFormField(
              keyboardType: TextInputType.number,
              controller: radiusController,
              decoration: InputDecoration(
                labelText: "Enter Radius of Circle",
                hintText: "e.g. 4",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.green,
                  )
                ),
        
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.pink)
                )
                
              ),
              validator: (value) {
                if(value == null || value.isEmpty){
                  return "please enter radius";
                }
                return null;
              },
              
            ),
        
            SizedBox(height: 40),
        
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){
                  
                  if(_formKey.currentState!.validate()){
                    setState(() {
                      double radius = double.parse(radiusController.text);
                      area = 3.14 *radius*radius;
                    });
                  }
              }, child: Text("Calculate Area", style: TextStyle(color: Colors.black))),
            ),
        
            SizedBox(height: 30,),
        
            Text("Area of Circle: $area")
          ],
        ),
      ),),
    );
  }
}