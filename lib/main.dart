import 'package:flutter/material.dart';
import 'package:netflix/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
     
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}


