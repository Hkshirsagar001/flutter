import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      home: Scaffold(  
        appBar: AppBar( 
          title: const Text(  
            "Aspect Ratio Demo", 
            style: TextStyle( 
              fontSize: 30, 
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center( 
          child: Container(  
            height: 300,
            width: 300,
            color: Colors.amber,
            child: Image.network( 
              "https://images.pexels.com/photos/28144564/pexels-photo-28144564/free-photo-of-a-green-tree-frog-stares-into-the-camera-while-its-friend-jumps-away.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
            ),
          ),
        ),
      ),
    );
  }
}