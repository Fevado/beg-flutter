import 'package:flutter/material.dart';
import 'package:ch6_basics/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // The root widget of this appliction

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Starter Template',
      theme: ThemeData(primarySwatch: Colors.lightGreen, useMaterial3: false),
      home: Home(),
    );
  }
}
