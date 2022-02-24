import 'package:flutter/material.dart';
import 'package:flutter_examples/src/pages/home.dart';
// import 'package:flutter_examples/src/pages/home_temp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componenentes App',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      debugShowCheckedModeBanner: false,
      // home: HomeTemp(),
      home: Home(),
    );
  }
}
