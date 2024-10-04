import 'package:flutter/material.dart';

class Question7 extends StatelessWidget {
  const Question7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Horizontal Image Scroll"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: 150,
              height: 300,
              child: Image.network(
                'https://images.pexels.com/photos/10978092/pexels-photo-10978092.jpeg?auto=compress&cs=tinysrgb&w=600',
                
              ),
            ),
            const SizedBox(width: 10),
            SizedBox(
              width: 150,
              height: 300,
              child: Image.network(
                'https://images.pexels.com/photos/10978092/pexels-photo-10978092.jpeg?auto=compress&cs=tinysrgb&w=600',
                
              ),
            ),
            const SizedBox(width: 10),
            SizedBox(
              width: 150,
              height: 300,
              child: Image.network(
                'https://images.pexels.com/photos/10978092/pexels-photo-10978092.jpeg?auto=compress&cs=tinysrgb&w=600',
                
              ),
            ),
            const SizedBox(width: 10),
            SizedBox(
              width: 150,
              height: 300,
              child: Image.network(
                'https://images.pexels.com/photos/10978092/pexels-photo-10978092.jpeg?auto=compress&cs=tinysrgb&w=600',
                
              ),
            ),
            const SizedBox(width: 10),
            SizedBox(
              width: 150,
              height: 300,
              child: Image.network(
                'https://images.pexels.com/photos/10978092/pexels-photo-10978092.jpeg?auto=compress&cs=tinysrgb&w=600',
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}
