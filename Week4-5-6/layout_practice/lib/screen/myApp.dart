// ignore_for_file: camel_case_types, prefer_final_fields, unnecessary_import, unused_import, file_names

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class myApp extends StatefulWidget {
  const myApp({super.key});

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  double _margin = 0;
  MaterialColor _color = Colors.blue;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Icon(
            Icons.image,
            size: 50.0,
          ),
          backgroundColor: Colors.black45,
          actions: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black54,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.home,
                size: 50.0,
              ),
            )
          ],
        ),
        body: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          margin: EdgeInsets.all(_margin),
          color: _color,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const <Widget>[
              Text(
                'Hello World',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  color: Colors.blueGrey,
                ),
              ),
              Text(
                'Adding Network Image',
                textAlign: TextAlign.center,
              ),
              Image(
                image: NetworkImage(
                    'https://logos.flamingtext.com/Word-Logos/network-design-sketch-name.png'),
              ),
              Text(
                'Adding Assets Image',
                textAlign: TextAlign.center,
              ),
              Image(
                image: AssetImage('assets/welcome.jpg'),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black87,
          onPressed: () {
            setState(() {
              _margin = 40;
              _color = Colors.brown;
            });
          },
          child: const Text('Click'),
        ),
      );
}
