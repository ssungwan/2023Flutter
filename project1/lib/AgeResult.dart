import 'package:flutter/material.dart';

class AgeResult extends StatelessWidget {
  final double name;
  final double age;

  const AgeResult({super.key, required this.name, required this.age});

  @override
  Widget build(BuildContext context) {
    final Age = age;
    print('age : $age');

    return Scaffold(
      appBar: AppBar(
        title: Text('나이 계산기'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _calcBmi(age),

              style: TextStyle(fontSize: 36),
            ),
            SizedBox(height: 16,),
            _buildIcon(age)
          ],
        ),
      ),
    );
  }

  String _calcBmi(double age) {
    var result = '유아기';

    if (age <= 5) {
      result = '영.유아';
    } else if (age <= 12) {
      result = '아동';
    } else if (age <= 18) {
      result = '청소년';
    } else if (age <= 29) {
      result = '청년';
    } else if (age <= 49) {
      result = '중년';
    } else if (age <= 64) {
      result = '장년';
    } else if (age <= 100) {
      result = '노년';
    }
    return result;
  }

  Widget _buildIcon(double bmi) {
    if (age <= 5) {
      return Icon(
        Icons.sentiment_very_satisfied,
        color: Colors.deepPurpleAccent,
        size: 100,
      );
    } else if (age <= 12) {
      return Icon(
        Icons.sentiment_very_satisfied,
        color: Colors.orange,
        size: 100,
      );
    } else if (age <= 18) {
      return Icon(
        Icons.sentiment_very_satisfied,
        color: Colors.yellow,
        size: 100,
      );
    } else if (age <= 29) {
      return Icon(
        Icons.sentiment_very_satisfied,
        color: Colors.green,
        size: 100,
      );
    } else if (age <= 49) {
      return Icon(
        Icons.sentiment_very_satisfied,
        color: Colors.purple,
        size: 100,
      );
    } else if (age <= 64) {
      return Icon(
        Icons.sentiment_very_satisfied,
        color: Colors.blue,
        size: 100,
      );
    } else {
      return Icon(
        Icons.sentiment_very_satisfied,
        color: Colors.red,
        size: 100,
      );
    }
  }
}