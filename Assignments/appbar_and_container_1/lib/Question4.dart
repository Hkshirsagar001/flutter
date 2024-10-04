

import 'package:flutter/material.dart';

class Question4 extends StatelessWidget{  
  const Question4({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(  
      appBar: AppBar(  
        title: const Text(
          "Question 4", 
          style: TextStyle(  
            color: Colors.white,
          ),  
          
        ),
        centerTitle: true,
        backgroundColor: Colors.purple[800],
      ),

      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          
          
            children: [
               
              Container(  
              
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
              const Padding(padding: EdgeInsets.all(10)),
              Container(  
                width: 100,
                height: 100,
                color: Colors.red,
              ),
            ],
          ),
      ),
      
    );
  }

}