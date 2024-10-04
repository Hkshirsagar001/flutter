import 'package:flutter/material.dart';


class Question8 extends StatelessWidget {
  const Question8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar(  
        title: const Text(
          "Bordered Container", 
          style: TextStyle(  
            color: Colors.white,
          ),  
          
        ),
        centerTitle: true,
        backgroundColor: Colors.purple[800],
      ),
      body: Center(  
        child: Container(  
          width: 300,
          height: 300,
          decoration: BoxDecoration(  
            border:Border.all( 
              color: Colors.red, 
              width: 5, 

            ),
          ),
        ),
      ),

    );
  }
}