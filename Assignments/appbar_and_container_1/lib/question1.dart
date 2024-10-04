

import 'package:flutter/material.dart';

class Question1 extends StatelessWidget{
  const Question1({super.key});
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(  
      
      appBar: AppBar(  
        title: const Text("DEMO"),
        actions: const [  
           Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16.0),  
            child:  Icon(Icons.settings),
            
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16.0),  
            child:  Icon(Icons.search),
          ),
        ], 
        backgroundColor: Colors.amber,
      ),
    );
  }  
  
}