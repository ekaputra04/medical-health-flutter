import 'package:flutter/material.dart';
import 'package:medical_health/const/colors.dart'; // Pastikan path ini sesuai dengan proyek Anda

class PrimaryButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const PrimaryButton({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor, // Background color
        foregroundColor: Colors.white, // Text color
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
        textStyle: const TextStyle(fontSize: 16), // Font size
      ),
      child: Text(label),
    );
  }
}
