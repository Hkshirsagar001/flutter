import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
       appBar: AppBar( 
        title: const Text( 
          "Container Demo",
        ),
        ), 

        body: Center(  
          child: Container(  
            height: 230,
            width: 230,
          
            decoration: const BoxDecoration(  
              gradient: LinearGradient( 
                begin: Alignment.topLeft, 
                end: Alignment.bottomRight, 

                colors: [ 
                  Colors.black, 
                  Colors.pink, 
                ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}
