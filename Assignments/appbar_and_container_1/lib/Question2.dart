

import 'package:flutter/material.dart';

class Question2 extends StatelessWidget{
  const Question2({super.key});
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(  
      
      appBar: AppBar(  
        title: const Text(
          "DEMO", 
          style: TextStyle( 
            color: Colors.white, 
          ),),
        actions: const [  
           Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16.0),  
            child:  Icon(
              Icons.settings, 
              color: Colors.white,),
            
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16.0),  
            child:  Icon( 
              Icons.search,
              color: Colors.white, 
            ),
          ),
        ], 
        centerTitle: true,
        backgroundColor: Colors.amber[900],
      ),
    );
  }  
  
}