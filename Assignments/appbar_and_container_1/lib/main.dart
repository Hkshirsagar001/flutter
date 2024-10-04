import 'package:appbar_and_container_1/Question10.dart';
import "package:appbar_and_container_1/Question3.dart"; 
import 'package:appbar_and_container_1/Question2.dart';
import 'package:appbar_and_container_1/Question4.dart';
import 'package:appbar_and_container_1/Question5.dart';
import 'package:appbar_and_container_1/Question6.dart';
import 'package:appbar_and_container_1/Question7.dart';
import 'package:appbar_and_container_1/Question8.dart';
import 'package:appbar_and_container_1/Question9.dart';
import 'package:appbar_and_container_1/question1.dart';


import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Question10(), 
    );
  }
}