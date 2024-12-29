import 'package:flutter/material.dart';
import 'package:medical_health/const/colors.dart';
import 'package:medical_health/screens/home_screen/home_screen.dart';
import 'package:medical_health/screens/welcome_screen/welcome_screen.dart'; // Update with your actual home screen path

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToWelcome();
  }

  _navigateToWelcome() async {
    await Future.delayed(Duration(seconds: 3), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const WelcomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Add your logo or splash image here
            Image.asset(
              'images/logo.png',
              fit: BoxFit.cover,
              width: 120,
            ),
            const SizedBox(height: 20),
            const Text(
              'Medical Health',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
