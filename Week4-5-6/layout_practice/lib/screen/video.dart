import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:layout_practice/screen/home.dart';

class Video extends StatefulWidget {
  const Video({Key? key}) : super(key: key);

  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {
  final videoURL = "";
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black54,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Home()),
              );
            },
            child: const Text("Home"),
          ),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Column(
              children: [
                InteractiveViewer(
                    maxScale: 5, child: Image.asset('assets/welcome.jpg'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
