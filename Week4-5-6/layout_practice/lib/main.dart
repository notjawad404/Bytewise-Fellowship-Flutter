import 'package:flutter/material.dart';
import 'package:layout_practice/screen/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => const MaterialApp(
        home: Home(),
        debugShowCheckedModeBanner: false,
      );
}
