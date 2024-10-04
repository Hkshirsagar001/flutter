

import 'package:flutter/material.dart';

class Question3 extends StatelessWidget{  
  const Question3({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(  
      appBar: AppBar(  
        title: const Text(
          "Hello Core2Web", 
          style: TextStyle(  
            color: Colors.white,
          ),  
          
        ),
        centerTitle: true,
        backgroundColor: Colors.purple[800],
      ),

      body: Center(  
        child: Container(  
          width: 360,
          height: 200,
          color: Colors.blue,
        ),
      ),
    );
  }

}