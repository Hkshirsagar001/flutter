import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text( 
            "NETFLIX DEMO", 
            style: TextStyle( 
              color: Colors.red,
              fontWeight: FontWeight.w900,
              fontSize: 28, 
            ),
            
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: Container(
          color: Colors.black,
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0), 
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        "Action Movie", 
                        style: TextStyle( 
                          fontSize: 18,
                          fontWeight: FontWeight.bold, 
                          color: Colors.white,
                          ),
                      ),
                    ),
                     
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          
                          moviePoster(),
                          moviePoster(),
                          moviePoster(),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  // Function to create movie posters
  Widget moviePoster() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SizedBox(
        height: 300,
        width: 200,
        child: Image.network(
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBPz8EmV13qeYF05a8KcJcfQJA_KuTGHuZ_A&s",
          
        ),
      ),
    );
  }
}
