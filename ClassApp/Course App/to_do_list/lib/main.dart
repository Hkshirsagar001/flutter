import 'package:flutter/material.dart';
import 'card.dart'; 

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(  
          title: const Text( 
            "To-do list", 
            style: TextStyle( 
              fontSize: 26, 
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          backgroundColor:const Color.fromRGBO(2, 167, 177, 1),

        ),
        body: const MyCart(), 
      ),
    );
  }
}
