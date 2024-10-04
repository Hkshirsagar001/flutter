import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class Question9 extends StatelessWidget {
  const Question9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar(  
        title: const Text(
          "circular Bordered Container", 
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
            borderRadius:BorderRadius.circular(20), 
          ),
        ),
      ),

    );
  }
}