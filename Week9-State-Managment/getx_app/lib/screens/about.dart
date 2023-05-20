import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/screens/home.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('About Page'),
        ),
        body: Center(
          child: Column(
            children: [
              const Text("About us"),
              ElevatedButton(
                  onPressed: () {
                    Get.to(const Home());
                  },
                  child: const Text("Home"))
            ],
          ),
        ));
  }
}
