import "package:flutter/material.dart"; 

void main(){ 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{  
  const MyApp({super.key}); 

  @override  
  Widget build(BuildContext context){  
    return  MaterialApp(  
      debugShowCheckedModeBanner: false, 
      home:QuizApp(), 

    );
  }
}

class QuizApp extends StatefulWidget{  

  @override
  State createState() => _QuizAppState(); 
}

class _QuizAppState extends State{ 

  List<Map> allQuestion = [  
    {  
      "Question": "who is the founder of Microsoft ? ",
      "Options":[ "Steve Jobs", "Larry Page", "Elon Musk", "Bill Gates", ], 
      "CorrectAnswer":3, 

    },
    {  
      "Question": "who is the founder of Google ? ",
      "Options":[ "Steve Jobs", "Larry Page", "Elon Musk", "Bill Gates", ], 
      "CorrectAnswer":1,
    },
    {  
      "Question": "who is the founder of Apple ? ",
      "Options":[ "Steve Jobs", "Elon Musk","Larry Page", "Bill Gates", ], 
      "CorrectAnswer":0,
    },
    {  
      "Question": "who is the founder of Tesla ? ",
      "Options":[ "Larry Page","Steve Jobs",  "Bill Gates", "Elon Musk",],
      "CorrectAnswer":3,
    },
    {  
      "Question": "who is the founder of Meta ? ",
      "Options":[ "Mark Zukerberge","Steve Jobs",  "Bill Gates", "Elon Musk",],
      "CorrectAnswer":0,
    },
  ]; 

  int currentQuestionIndex = 0; 

  @override  
  Widget build(BuildContext context){  
    return  Scaffold(  

      appBar:AppBar(  
        title: const Text(  
          "Quiz App",
          style: TextStyle(  
            color: Colors.orange , 
            fontSize: 45, 
            fontWeight: FontWeight.w800, 
          )
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Column(  
        children: [  
          const SizedBox(  
            height:30, 
          ), 
          Row(  
            children: [ 
               const SizedBox( 
                width: 120,
               ), 
              Text( 
                "Question : ${currentQuestionIndex + 1}/ ${allQuestion.length}", 
                style: TextStyle(  
                  fontSize:25,
                  color: Colors.blue[900], 

                ),
              ), 
            ],
          ),
          const SizedBox(  
            height:45, 
          ),
          SizedBox(  
            child: Text(  
              allQuestion[currentQuestionIndex]["Question"], 
              style:const TextStyle(  
                fontSize: 18,
                
              ),

            ),
          ),

          const SizedBox(  
            height: 45,
          ),

          SizedBox(  
            height: 55,
            width: 300, 
            child: ElevatedButton(  
              onPressed: (){},
              child: Text(  
                allQuestion[currentQuestionIndex]["Options"][0],
              ),
            ),
          ),

          const SizedBox(  
            height: 35,
          ),

           SizedBox(  
            height: 55,
            width: 300, 
            child: ElevatedButton(  
              onPressed: (){},
              child: Text(  
                allQuestion[currentQuestionIndex]["Options"][1],
              ),
            ),
          ),

          const SizedBox(  
            height: 35,
          ),

           SizedBox(  
            height: 55,
            width: 300, 
            child: ElevatedButton(  
              onPressed: (){},
              child: Text(  
                allQuestion[currentQuestionIndex]["Options"][2],
              ),
            ),
          ),

          const SizedBox(  
            height: 35,
          ),
          
           SizedBox(  
            height: 55,
            width: 300, 
            child: ElevatedButton(  
              onPressed: (){},
              child: Text(  
                allQuestion[currentQuestionIndex]["Options"][3],
              ),
            ),
          ),
        ],
      ),

      floatingActionButton:FloatingActionButton(  
        onPressed: (){  
          if(currentQuestionIndex < allQuestion.length - 1){ 
            currentQuestionIndex++; 

            setState(() {});
          }
        }, 
        backgroundColor: Colors.blue,
        child:const Icon( 
          Icons.forward ,
          color: Colors.orange,  
        ),
      )

    );
  }
}