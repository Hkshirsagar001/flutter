import 'package:flutter/material.dart';

class Question6 extends StatelessWidget {
  const Question6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Colorful Containers"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              color: Colors.red,
              child: const Center(
                child: Text(
                  'Container 1',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            Container(
              height: 150,
              color: Colors.orange,
              child: const Center(
                child: Text(
                  'Container 2',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            Container(
              height: 150,
              color: Colors.yellow,
              child: const Center(
                child: Text(
                  'Container 3',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            Container(
              height: 150,
              color: Colors.green,
              child: const Center(
                child: Text(
                  'Container 4',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            Container(
              height: 150,
              color: Colors.blue,
              child: const Center(
                child: Text(
                  'Container 5',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            Container(
              height: 150,
              color: Colors.indigo,
              child: const Center(
                child: Text(
                  'Container 6',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            Container(
              height: 150,
              color: Colors.purple,
              child: const Center(
                child: Text(
                  'Container 7',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            Container(
              height: 150,
              color: Colors.pink,
              child: const Center(
                child: Text(
                  'Container 8',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            Container(
              height: 150,
              color: Colors.brown,
              child: const Center(
                child: Text(
                  'Container 9',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            Container(
              height: 150,
              color: Colors.grey,
              child: const Center(
                child: Text(
                  'Container 10',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}