import 'package:project1/AgeMain.dart';
import 'package:project1/AgeResult.dart';
import 'package:project1/MyCustomForm.dart';
import 'package:project1/MyForm.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AgeMain(),
      //home: AgeResult(),
      //home: MyCustomForm(),
      //home: Information(),
      //home: Scaffold(
      //appBar: AppBar(
      //title: Text('폼 검증 데모'),
      //backgroundColor: Colors.tealAccent,
      //),
      //body: MyForm(),
      //),
      //MyForm(),
    );
  }
}