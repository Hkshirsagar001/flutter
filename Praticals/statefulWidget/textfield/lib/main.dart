import 'package:flutter/material.dart'; 

void main(){  
  runApp(const MainApp()); 
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> { 
  TextEditingController nameController = TextEditingController(); 

  String? myName; 

  @override
  Widget build(BuildContext context) {
    return  MaterialApp( 
      home: Scaffold(  
        appBar: AppBar(  
          title: const Text(  
            "TextField Demo"
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ), 

        body:  Column(  
          children: [  
            const SizedBox( 
              height: 20,

            ),

            Padding( 
              padding: const  EdgeInsets.all(20.0),
              child: TextField(  
                controller: nameController, 

                decoration: const InputDecoration(  
                  suffixIcon: Icon(Icons.visibility),
                  hintText: "Enter Name",
                  border: OutlineInputBorder(),
                ),
              ),
            ), 

            const SizedBox(  
              height: 20,
            ), 

            GestureDetector(   
              onTap: () {
                print("add data");
                myName = nameController.text; 
                nameController.clear; 
                setState(() {  });
              },
              child: Container(  
                padding: const EdgeInsets.symmetric( 
                  horizontal: 15,
                  vertical: 5 
                ),
                decoration: BoxDecoration( 
                  color: Colors.blue, 
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(  
                  "add Data", 
                  style: TextStyle( 
                    fontSize: 25, 
                    color: Colors.white, 
                  ),
                ),
              ),
            ), 

            const SizedBox(height: 20,),

            Text(   
              "Name: $myName", 
              style: const TextStyle(  
                fontSize: 20, 
              ),
            )
          ],
        ),
      ),
    );
  }
}