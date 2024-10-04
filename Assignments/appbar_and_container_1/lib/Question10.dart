import 'package:flutter/material.dart';

class Question10 extends StatelessWidget {
  const Question10({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(  
        title: const Text( 
          "Question 10",
        ),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Center(  
        child: Container(  
          width: 300,
          height: 300,
          decoration: BoxDecoration(  
            border:Border.all( 
              color: Colors.red, 
              width: 10, 
            ),
            borderRadius:const BorderRadius.only(  
              topLeft: Radius.circular(20),
              bottomRight: Radius.circular(20), 
            ) 
          ),
        ),
      ),
    );
  }
}