import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: true,
      home: QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State createState() => _QuizAppState();
}

class _QuizAppState extends State {
  // All quiz Question within List<Map> format

  List<Map> allQuestions = [
    {
      "question": "Who is the founder of Microsoft ?",
      "options": ["Larry Page", "Elon Musk", "Jeff Bezos", "Bill Gates"],
      "correctAnswer": 3,
    },
    {
      "question": "What does AWS stand for?",
      "options": [
        "Amazon Web Service",
        "Amazon Work System",
        "Amazon Wide Solutions",
        "Advanced Web Services"
      ],
      "correctAnswer": 0,
    },
    {
      "question": "Who is the founder of Tesla ?",
      "options": ["Larry Page", "Elon Musk", "Jeff Bezos", "Bill Gates"],
      "correctAnswer": 1,
    },
  ];
  int currentScaffoldNumber = 1; // changes Scaffold 1 = landing, 2 = question, 3 = result

  int currentQuestionIndex = 0;

  int selectedAnswerIndex = -1;

  int scoreCounter = 0;

  WidgetStateProperty<Color?> checkAnswer(int answerIndex) {
    if (selectedAnswerIndex != -1) {
      if (answerIndex == allQuestions[currentQuestionIndex]["correctAnswer"]) {
        return const WidgetStatePropertyAll(Colors.green);
      } else if (selectedAnswerIndex == answerIndex) {
        return const WidgetStatePropertyAll(Colors.red);
      }
    }

    // Return null color for default case
    return const WidgetStatePropertyAll(null);
  }

  @override
  Widget build(BuildContext context) {
    print("In build method  -QuizApp");
    return screen();
  }

  Scaffold screen() {
    if (currentScaffoldNumber == 1) {
      //Scaffold for Landing page
      return Scaffold(
          body: Container(
        color: Colors.blue,
        child: Column(
          children: [
            const SizedBox(
              //sizebox for gap vertical
              height: 300,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 80,
                ),
                SizedBox(
                  child: Image.network("https://tse4.mm.bing.net/th?id=OIP.X2VnpjwxD1goNBPTqH1segHaFg&pid=Api&P=0&h=180"),
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            SizedBox(
              child: ElevatedButton(
                  onPressed: () {
                    currentScaffoldNumber = 2;
                    setState(() {});
                  },
                  child: const Text("Start",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 40,
                      ))),
            ),
          ],
        ),
      ));
    } else if (currentScaffoldNumber == 2) {
      //Scaffold for Question Page.
      return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text(
            "quiz app",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 60,
            ),

            Row(
              children: [
                const SizedBox(
                  width: 130,
                ),
                Text(
                    "Question : ${currentQuestionIndex + 1} / ${allQuestions.length} ",
                    style: const TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              ],
            ),

            //Question

            const SizedBox(
              height: 50,
            ),

            Row(
              children: [
                const SizedBox(
                  width: 30,
                ),
                SizedBox(
                  width: 380,
                  height: 50,
                  child: Text(
                    allQuestions[currentQuestionIndex]["question"],
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 50,
            ),

            //Option 1

            SizedBox(
              height: 50,
              width: 320,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: checkAnswer(0),
                  ),
                  onPressed: () {
                    if (selectedAnswerIndex == -1) {
                      selectedAnswerIndex = 0;
                      setState(() {});
                    }
                  },
                  child: Text(
                    "A. ${allQuestions[currentQuestionIndex]["options"][0]}",
                    style: TextStyle(fontSize: 20, color: Colors.blue[900]),
                  )),
            ),

            const SizedBox(
              height: 50,
            ),

            //Option 2

            SizedBox(
              height: 50,
              width: 320,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: checkAnswer(1),
                  ),
                  onPressed: () {
                    if (selectedAnswerIndex == -1) {
                      selectedAnswerIndex = 1;
                      setState(() {});
                    }
                  },
                  child: Text(
                    "B. ${allQuestions[currentQuestionIndex]["options"][1]}",
                    style: TextStyle(fontSize: 20, color: Colors.blue[900]),
                  )),
            ),

            const SizedBox(
              height: 50,
            ),

            //Option 3

            SizedBox(
              height: 50,
              width: 320,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: checkAnswer(2),
                  ),
                  onPressed: () {
                    if (selectedAnswerIndex == -1) {
                      selectedAnswerIndex = 2;
                      setState(() {});
                    }
                  },
                  child: Text(
                    "C. ${allQuestions[currentQuestionIndex]["options"][2]}",
                    style: TextStyle(fontSize: 20, color: Colors.blue[900]),
                  )),
            ),

            const SizedBox(
              height: 50,
            ),

            //Option 4

            SizedBox(
              height: 50,
              width: 320,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: checkAnswer(3),
                  ),
                  onPressed: () {
                    if (selectedAnswerIndex == -1) {
                      selectedAnswerIndex = 3;
                      setState(() {});
                    }
                  },
                  child: Text(
                    "D. ${allQuestions[currentQuestionIndex]["options"][3]}",
                    style: TextStyle(fontSize: 20, color: Colors.blue[900]),
                  )),
            ),
          ],
        ),
        floatingActionButton: SizedBox(
          width: 140,
          height: 50,
          child: FloatingActionButton(
            onPressed: () {
              if (selectedAnswerIndex ==
                  allQuestions[currentQuestionIndex]["correctAnswer"]) {
                scoreCounter++; // Increment the score if the answer is correct
              }

              if (currentQuestionIndex < allQuestions.length - 1) {
                // Move to the next question if there are more questions left
                currentQuestionIndex++;
                selectedAnswerIndex =
                    -1; // Reset selected answer for the next question
                setState(() {});
              } else {
                // If all questions have been answered, show the result page
                currentScaffoldNumber = 3;
                setState(() {});
              }
            },
            backgroundColor: Colors.white,
            child: const Icon(
              Icons.forward,
              size: 50,
              color: Colors.blue,
            ),
          ),
        ),
      );
    } else {
      //Scaffold for result page.

      return Scaffold(
        backgroundColor: Colors.blue,
        body: Column(
          children: [
            const SizedBox(
              height: 140,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 50,
                ),
                Text(
                  "congratulations !",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    color: Colors.amber,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              child: Image.network(
                  "https://tse2.mm.bing.net/th?id=OIP.gP8zLru37ehOwSYsjay_9gHaHa&pid=Api&P=0&h=180"),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 160,
                ),
                 Text(
                  "Score :",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 160,
                ),
                Text("$scoreCounter/${allQuestions.length}")
              ],
            )
          ],
        ),
      );
    }
  }
}
