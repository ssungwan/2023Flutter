import 'package:ch9/MyCustomForm.dart';
import 'package:flutter/material.dart';
import 'BmiMain.dart';
import 'BmiResult.dart';
import 'MyForm.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
     // home: const MyCustomForm(),
      // home: Scaffold(
      // appBar: AppBar(
      //    title: Text('폼 검증 데모'),
      //      backgroundColor: Colors.purple,
      //  ),
      //  body: MyForm(),
      //MyForm(),
      //home: BmiMain(),
      home: BmiResult(height: 1.0, weight: 2.0),
    );
  }
}

