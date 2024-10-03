import "package:flutter/material.dart"; 

void main(){  
  runApp(Myapp());
}

class Myapp extends StatelessWidget{
  const Myapp({super.key});
  
  @override  
  Widget build(BuildContext context){ 
    return  MaterialApp( 
      home: Scaffold(  
        appBar: AppBar(  
          title: const Text("Listview Builder"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ), 

        body: ListView.builder(  
          itemCount: 30,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index){  
            return Text( 
              "Index : $index",
              style: const TextStyle(  
                fontSize: 28, 

              ), 
            );
          }
          
        )
      ),
    );
  }
}