import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("India Flag"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center, 
           
            children: [
              
              Column(  
                mainAxisAlignment: MainAxisAlignment.end,
                children: [  
                  Container(  
                    width: 10,
                    height: 480,
                    color: Colors.black,
                  ),
                ],
              ),
              
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 250,
                    height: 40,
                    color: Colors.orange,
                  ),
                  Container(
                    width: 250,
                    height: 40,
                    color: Colors.white,
                    child: Center(
                      child: Image.network(
                        "https://tse1.mm.bing.net/th?id=OIP.3nftDdnLbMop6GQS78hK7gHaHa&pid=Api&P=0&h=180",
                        
                      ),
                    ),
                  ),
                  Container(
                    width: 250,
                    height: 40,
                    color: Colors.green,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
