import 'package:flutter/material.dart';
import 'package:helloworld/Montalvo_activity6.dart';

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
      home: StarGirlApp(), // This widget will be the home screen
      debugShowCheckedModeBanner: false,
    );
  }
}
