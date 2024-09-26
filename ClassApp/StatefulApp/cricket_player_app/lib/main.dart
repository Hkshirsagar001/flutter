
import"package:flutter/material.dart"; 

void main(){  
  runApp(const CricketPlayer());
}
class CricketPlayer extends StatefulWidget{
  const CricketPlayer({super.key}); 

  @override
  State createState(){ 
    return _CricketPlayerState(); 
  }  
  
}
class _CricketPlayerState extends State{  

  List criplayer = [  
  "https://tse1.mm.bing.net/th?id=OIP.b-KdjTydwpiiFXx6WJ4QRQHaFj&pid=Api&P=0&h=180",
  "https://thetalentedworld.net/wp-content/uploads/2020/06/ms-dhoni.jpg",
  "https://static.toiimg.com/img/65841286/Master.jpg",
  "https://image-cdn.essentiallysports.com/wp-content/uploads/20200420200802/rahul-ani.jpg",
  "https://tse1.mm.bing.net/th?id=OIP.FkFBmFodPY7v3TjWcOQ_cAHaEK&pid=Api&P=0&h=180",
  ];

  int index = 0; 

  @override
  Widget build(BuildContext context){ 

    print("In Build method");
    return MaterialApp(  
      home:Scaffold(  
        appBar:AppBar(  
          title: const Text("Cricket Player", 
          style: TextStyle(  
            color: Colors.white, 
          ),),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body:  Center(  
          child: SizedBox(  
            height: 300,
            width: 300,
            child: Image.network(criplayer[index]),
          ),
        ),
        floatingActionButton:FloatingActionButton( 
          onPressed: (){  
            if(index < criplayer.length-1){ 
              index++; 
            }else{  
              index = 0; 
            }
            setState(() {});
          },
          backgroundColor: Colors.blue,
          child: const Text( 
            "next",
            style: TextStyle(  
              color: Colors.white, 
            ), 
            ),
        )
        
      )
    );
  }
}
