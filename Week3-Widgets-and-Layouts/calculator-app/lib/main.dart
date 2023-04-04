import 'package:flutter/material.dart';
import 'package:calculator_app/screens/SimpleCalculator.dart';

void main() {
  runApp(Calculator());
}

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(primaryColor: Colors.blue),
      home: SimpleCalculator(),
    );
  }
}
