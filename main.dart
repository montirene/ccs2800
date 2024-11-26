import 'package:flutter/material.dart';
import 'package:helloworld/18_add_homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Hello World',
      theme: ThemeData(primaryColor: Colors.blue),
      home: AddHomeScreen(), // This widget will be the home screen
      debugShowCheckedModeBanner: false,
    );
  }
}
