import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/controller/app_controller.dart';
import 'package:getx_app/screens/about.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppController appController = Get.put(AppController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          ElevatedButton(
              onPressed: () {
                Get.snackbar(
                  "Home Page",
                  "Welcome to homepage",
                );
              },
              child: const Text("Click"))
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Get.defaultDialog(
                          title: "Alert",
                          content: Column(
                            children: [
                              const Text("Press button to go to about page"),
                              ElevatedButton(
                                  onPressed: () {
                                    Get.to(const About());
                                  },
                                  child: const Text("About")),
                            ],
                          ));
                    },
                    child: const Text("Dialog Box"),
                  ),
                ],
              ),
              InkWell(
                  onTap: () {
                    appController.increment1();
                  },
                  child: const Icon(
                    Icons.add,
                    size: 50,
                  )),
              Obx(
                () => Text(
                  appController.number.toString(),
                  style: const TextStyle(
                      fontSize: 50, fontWeight: FontWeight.bold),
                ),
              ),
              InkWell(
                  onTap: () {
                    appController.decrement1();
                  },
                  child: const Icon(
                    Icons.remove,
                    size: 50,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
