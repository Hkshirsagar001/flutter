/* 
Coloumn MainAxisAlignment : 
  -spaceAround
  -spaceBetween 
  -spaceEvenly
*/

import "package:flutter/Material.dart"; 

void main(){  
  runApp(const MyApp()); 
}

class MyApp extends StatelessWidget{  
  const MyApp({super.key}); 

  @override
  Widget build(BuildContext context){  

    return  MaterialApp(  
      home: Scaffold(  
        appBar: AppBar(  

          title: const Text("Column" ),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),  
        body:  Column(  
          // spaceAround provides equal space around the Widget.
          // spaceBetween provide equal space between two widgets. 
          // spaceEvenly provide equal distance or space around widgets.

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [   

             Container(  
              width: 170,
              height: 170,
              color: Colors.green,
            ),

             Container(  
              width: 170,
              height: 170,
              color: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}