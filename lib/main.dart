// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'package:medical_health/screens/splash_screen/splash_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Bandung',
      theme: ThemeData(),
      home: SplashScreen(),
    );
  }
}
