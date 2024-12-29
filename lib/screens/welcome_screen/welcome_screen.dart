// ignore_for_file: library_private_types_in_public_api, avoid_print

import 'package:flutter/material.dart';
import 'package:medical_health/const/colors.dart';
import 'package:medical_health/screens/login_screen/login_screen.dart';
import 'package:medical_health/widgets/button.dart'; // Update with your actual home screen path

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  WelcomeScreenState createState() => WelcomeScreenState();
}

class WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Add your logo or splash image here
            Image.asset(
              'images/logo-blue.png',
              fit: BoxFit.cover,
              width: 120,
            ),
            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.all(32.0),
              child: const Text(
                'Medical Health is your trusted partner in managing your health and well-being.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w100,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            PrimaryButton(
              label: 'Get Started',
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
