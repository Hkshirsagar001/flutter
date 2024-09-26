import "package:flutter/material.dart"; 

void main(){  
  runApp(const ToggleColor());
}

class ToggleColor extends StatefulWidget{  
  const ToggleColor({super.key}); 

  @override
  State createState(){  
    return _ToggleColorState(); 
  }
}

class _ToggleColorState extends State{ 

  bool colorChange = true;  

@override
Widget build(BuildContext context){  

  print("In build method"); 
  return  MaterialApp(  
    home: Scaffold(  
      appBar:AppBar(  
      title:const Text(
        "TOGGLE COLOR",
        style: TextStyle(  
          color:Colors.white,
        ),  
      ),
      centerTitle:true, 
      backgroundColor:Colors.blue[900],

      ),
      body:  Center(   
        child: Container(  
          width: 300,
          height:300,
          color:colorChange ? Colors.red:Colors.blue,
        ),
      ),
      floatingActionButton:FloatingActionButton(   
        onPressed:(){  

          colorChange? colorChange = false:colorChange = true;
          setState(() {});
        },
        backgroundColor: Colors.blue,
        child:const Text("Toggle"),
      ),
    )
  );
}

}