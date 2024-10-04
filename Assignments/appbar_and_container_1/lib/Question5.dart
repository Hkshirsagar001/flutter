

import 'package:flutter/material.dart';

class Question5 extends StatelessWidget{  
  const Question5({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(  
      appBar: AppBar(  
        title: const Text(
          "Question 5", 
          style: TextStyle(  
            color: Colors.white,
          ),  
          
        ),
        centerTitle: true,
        backgroundColor: Colors.purple[800],
      ),

      body: SingleChildScrollView( 
        
        child: Center(
          child: Column( 
            crossAxisAlignment: CrossAxisAlignment.center, 
            children: [  
              const Padding(padding: EdgeInsets.symmetric(vertical: 20)), 
              SizedBox( 
                width: 300,
                height: 300,
                child: Image.network("https://images.ctfassets.net/h6goo9gw1hh6/5wl7KPvpM44dPJ3kwKfwTe/0eb029cd00424d1b1934d780f57bbc34/Aspect-Ration-Image-1to1.jpg?w=1600&h=1600&fl=progressive&q=70&fm=jpg"),
          
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 20)), 
               SizedBox(  
                 width: 300,
                height: 300,
                child:Image.network("https://images.pexels.com/photos/27867019/pexels-photo-27867019.jpeg?cs=srgb&dl=pexels-stevedoessteve-27867019.jpg&fm=jpg"), 
              ), 
               const Padding(padding: EdgeInsets.symmetric(vertical: 20)), 
              SizedBox( 
                width: 300,
                height: 300,
                child: Image.network("https://images.pexels.com/photos/28105357/pexels-photo-28105357/free-photo-of-an-iridescent-blue-black-dragonfly-descends-onto-a-twig.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
          
              ),
            ],
          ),
        ),
      )
      
    );
  }

}