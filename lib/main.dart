import 'package:flutter/material.dart';
import 'package:osscam_app/pages/create.dart';
import 'package:osscam_app/pages/login.dart';
import 'package:osscam_app/pages/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Creat(),

      ),
      
    );
  }
}