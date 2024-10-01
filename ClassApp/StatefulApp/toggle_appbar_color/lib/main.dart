import "package:flutter/material.dart"; 

void main(){  
  runApp(const MyApp());
}

class MyApp extends StatefulWidget{  
  const MyApp({super.key});

  @override
  State createState() => _MyAppState(); 
}

class _MyAppState extends State{   


  bool changeColor = true; 

  @override  
  Widget build(BuildContext context){  

    return  MaterialApp(   
      debugShowCheckedModeBanner: false,
      home:Scaffold(  
        appBar:AppBar(  
          title: const Text("Toggle Color app"),
          centerTitle: true,
          backgroundColor: changeColor? Colors.amber : Colors.purple,
        ),

        floatingActionButton: FloatingActionButton(  
          onPressed:(){ 
            if(changeColor == true){ 
              changeColor = false; 
            }else{ 
              changeColor = true; 
            }
            setState(() {
              
            });
          } ,

          child: const Text("Toggle"),
          ),
      )
    );
  }
}