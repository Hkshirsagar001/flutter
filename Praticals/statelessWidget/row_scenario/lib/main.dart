import "package:flutter/material.dart"; 


void main(){  
  runApp(const MyApp()); 
}

class MyApp extends StatelessWidget{  
  const MyApp({super.key}); 

  @override  
  Widget build(BuildContext context){   
    
    return MaterialApp(  
      home:Scaffold(  
        appBar: AppBar(  
          title: const Text("Row Demo"),
          centerTitle: true,
          backgroundColor: Colors.amber[700],

        ),

        body: Container(  
          height: MediaQuery.of(context).size.height,
          color: Colors.cyan,
          child:  Row(  
             mainAxisAlignment: MainAxisAlignment.end,
             crossAxisAlignment: CrossAxisAlignment.end,
            children: [  
              Container(  
                height: 170,
                width: 170,
                color: Colors.white,
              )
            ],
          ),
        )
      )
    );
  }
}