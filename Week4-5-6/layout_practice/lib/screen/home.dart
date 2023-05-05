import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:layout_practice/screen/myApp.dart';
import 'package:layout_practice/screen/video.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Icon(
            Icons.home,
            size: 50.0,
          ),
          centerTitle: true,
          actions: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black54,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Video()),
                );
              },
              child: const Icon(
                Icons.videocam,
                size: 50.0,
              ),
            )
          ],
        ),
        body: Stack(children: [
          const RiveAnimation.network(
              'https://cdn.rive.app/animations/vehicles.riv'),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: const SizedBox(),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  SizedBox(
                    width: 260,
                    child: Column(
                      children: const [
                        Text(
                          "Welcome to Flutter",
                          style: TextStyle(fontSize: 40, height: 1.2),
                        ),
                        SizedBox(height: 16),
                        Padding(
                          padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                          child: Text(
                            "Flutter is a powerful and flexible mobile app SDK for building high-performance, visually attractive, and natively compiled applications for mobile, web, and desktop platforms. With its rich set of pre-built widgets, easy-to-use development tools, and wide community support, Flutter offers developers an efficient and enjoyable way to create beautiful and functional apps.",
                            style: TextStyle(
                              fontFamily: 'BrunoAceSC',
                              color: Colors.white70,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 64,
                    width: 130,
                    child: Stack(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const myApp()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Row(
                            children: const [
                              Icon(CupertinoIcons.arrow_right),
                              Text(
                                'Next Page',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      );
}
