import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar:AppBar(  
          title: const Text("Static ListView"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ) , 

        body: ListView(   
          
          children:  [   
           

            GestureDetector(  
              onTap: () {
                print("button pressed"); 
              },
              child:  SizedBox(  
                child:Image.network("https://media-cdn.tripadvisor.com/media/attractions-splice-spp-674x446/07/c3/6f/7c.jpg"),
              ),
            ),
            
            const Padding(
              padding:  EdgeInsets.all(8.0),
              child: Row( 
                mainAxisAlignment: MainAxisAlignment.start,
                
                children: [ 
                  Icon( 
                    Icons.favorite, 
                    color: Colors.red,
                  ),
                   Icon( 
                    Icons.comment, 
                    
                  ),
                   Icon( 
                    Icons.share, 
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            
            Image.network("https://media-cdn.tripadvisor.com/media/attractions-splice-spp-674x446/07/c3/6f/7c.jpg"), 
             const Padding(
              padding:  EdgeInsets.all(8.0),
              child: Row( 
                mainAxisAlignment: MainAxisAlignment.start,
                
                children: [ 
                  Icon( 
                    Icons.favorite, 
                    color: Colors.red,
                  ),
                   Icon( 
                    Icons.comment, 
                    
                  ),
                   Icon( 
                    Icons.share, 
                    color: Colors.red,
                  ),
                ],
              ),
            ), 

            Image.network("https://media-cdn.tripadvisor.com/media/attractions-splice-spp-674x446/07/c3/6f/7c.jpg"),
            
            const Padding(
              padding:  EdgeInsets.all(8.0),
              child: Row( 
                mainAxisAlignment: MainAxisAlignment.start,
                
                children: [ 
                  Icon( 
                    Icons.favorite, 
                    color: Colors.red,
                  ),
                   Icon( 
                    Icons.comment, 
                    
                  ),
                   Icon( 
                    Icons.share, 
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            Image.network("https://media-cdn.tripadvisor.com/media/attractions-splice-spp-674x446/07/c3/6f/7c.jpg"),
            
            const Padding(
              padding:  EdgeInsets.all(8.0),
              child: Row( 
                mainAxisAlignment: MainAxisAlignment.start,
                
                children: [ 
                  Icon( 
                    Icons.favorite, 
                    color: Colors.red,
                  ),
                   Icon( 
                    Icons.comment, 
                    
                  ),
                   Icon( 
                    Icons.share, 
                    color: Colors.red,
                  ),
                ],
              ),
            ),
          ],
          
        )
      ),
    );
  }
}
