import "package:flutter/material.dart"; 

void main(){  
  runApp(const MyApp()); 
}

class MyApp extends StatelessWidget{  
  const MyApp({super.key}); 

  @override  
  Widget build(BuildContext context){  

    return  MaterialApp(  
      home:Scaffold(  
        appBar: AppBar(  
          title: const Text("Scroll column"),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),

        body:  SingleChildScrollView(  
           
          child: Column(  
            children: [  
              Image.network("https://media-cdn.tripadvisor.com/media/attractions-splice-spp-674x446/07/c3/6f/7c.jpg"),
              Container(  
                height: 200,
                width: 200,
                color: Colors.amber,
              ), 

              Image.network("https://images.indianexpress.com/2024/09/IMG-20240905-WA0001.jpg"), 
               Container(  
                height: 200,
                width: 200,
                color: Colors.amber,
              ), 

              Image.network("https://media-cdn.tripadvisor.com/media/attractions-splice-spp-674x446/07/c3/6f/7c.jpg"),
              Container(  
                height: 200,
                width: 200,
                color: Colors.amber,
              ), 
            ],
          ),
        ),
      )
    );
  }
}