import 'package:flutter/material.dart';
import 'package:weather/models/constants.dart';
import 'package:weather/ui/welcome.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Constants myConstants =
        Constants(); // Create an instance of the Constants class

    Size size =
        MediaQuery.of(context).size; // Retrieve the size of the current screen

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        color: myConstants.primaryColor
            .withOpacity(.5), // Set the background color with opacity
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                  'assets/get-started.png'), // Display an image from the assets folder
              const SizedBox(
                height: 30,
              ), // Add a fixed vertical spacing
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const Welcome())); // Navigate to the Welcome screen
                },
                child: Container(
                  height: 50,
                  width: size.width * 0.7,
                  decoration: BoxDecoration(
                    color: myConstants.primaryColor, // Set the background color
                    borderRadius: const BorderRadius.all(Radius.circular(
                        10)), // Apply border radius to the container
                  ),
                  child: const Center(
                    child: Text(
                      'Get started',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ), // Display a centered text with white color and specified font size
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
