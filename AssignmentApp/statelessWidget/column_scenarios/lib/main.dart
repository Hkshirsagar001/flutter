import "package:flutter/Material.dart"; 

void main(){    
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{  
  const MyApp({super.key}); 

  @override
  Widget build(BuildContext context){  
    return  MaterialApp( 
      home:Scaffold(  
        appBar:AppBar( 
          title: const Text(  
            "Column Demo", 
            style: TextStyle( 
              fontWeight: FontWeight.w600, 
            ),
          ), 
          centerTitle: true,
          backgroundColor: Colors.blue,
         ) ,

         body: Container( 
            color: Colors.red,
            width: MediaQuery.of(context).size.width,
           child: Column(  
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
            children: [  
              Container(  
                height: 170,
                width: 170,
                color: Colors.amber,
              )
            ],
           ),
         ),
      )
    );
  }
}