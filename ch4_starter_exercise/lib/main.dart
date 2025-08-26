import 'package:flutter/material.dart';
import 'package:ch4_starter_exercise/pages/home.dart';
import 'package:ch4_starter_exercise/pages/about.dart';

void main() =>runApp( MyApp());

class MyApp extends StatelessWidget{
  // The root widget of this appliction

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Starter Template',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: false,
      ),
      home: About(),
    );
  }
}