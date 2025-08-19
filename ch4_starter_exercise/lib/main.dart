import 'package:flutter/material.dart';
import 'package:ch4_starter_exercise/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This is the root widget of my application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Starter template',
      theme: ThemeData(
        primarySwatch: Colors.red,
        useMaterial3: false,
      ),
      home: Home(),
    );
  }
}
