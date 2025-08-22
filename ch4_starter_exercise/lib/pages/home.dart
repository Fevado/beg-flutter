// Flutter I am going to master you
import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  @override
  _Homestate createState() => _Homestate();
}

class _Homestate extends State<Home>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(),
    );
  }
}