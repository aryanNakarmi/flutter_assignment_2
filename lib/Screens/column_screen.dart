import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Column",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
      ),
      body: Container(
      color: Colors.yellow,
      width: double.infinity,
      child:    
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
         
              TextButton(onPressed: (){}, child: const Text("Button1" )),
              ElevatedButton(onPressed: (){}, child: const Text("Button2")),
              OutlinedButton(onPressed: (){}, child: const Text("Button3")),
            ],
        
      ),
      // Column(
        
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // children: const [
         
          // Column(
          //   children: [
          // Icon(Icons.star,size:50,color: Colors.pink,),
          // Icon(Icons.star,size:50,color: Colors.pink,),
          //   ],
          // ),

          // Column(children: [
          // Icon(Icons.star_border,size:100),
          // ],),

          // Column(children: [
          // Icon(Icons.star,size:50,color: Colors.white),
          // Icon(Icons.star,size:50,color: Colors.white),
          // Icon(Icons.star,size:50,color: Colors.white),
          // ],)


      
        // ],
        
      // ),
    )
     );
  }
}