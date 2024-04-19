import 'package:flutter/material.dart';
import 'package:flutter_assignment3/routes/Routes.dart';

class GreetingPage extends StatelessWidget {
  const GreetingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Center widget to center the column
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Greeting message
            Text(
              'Welcome to Our App!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center, // Center the text
            ),
            SizedBox(height: 20),
            // Image
            Image.asset(
              'assets/images/homeOne.png',
              width: 400,
              height: 400,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 50),
            // Button to navigate to home page
            ElevatedButton(
              onPressed: () {
                // Navigate to home page
                Routes.navigateTo(context, Routes.home);
              },
              child: Text('Get Started'),
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Colors.deepPurple, // Set button color to deepPurple
              ),
            ),
          ],
        ),
      ),
    );
  }
}
