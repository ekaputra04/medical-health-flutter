// doctor_detail_screen.dart
import 'package:flutter/material.dart';

class DoctorDetailScreen extends StatelessWidget {
  final Map<String, dynamic> doctor;

  const DoctorDetailScreen({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(doctor["name"]),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(doctor["profileImage"]),
                radius: 50,
              ),
            ),
            SizedBox(height: 16),
            Text(
              "Specialty: ${doctor["specialty"]}",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text("Experience: ${doctor["experience"]}"),
            Text("Education: ${doctor["education"]}"),
            Text("Location: ${doctor["location"]}"),
            Text("Contact: ${doctor["contact"]}"),
            Text("Rating: ${doctor["rating"]}"),
          ],
        ),
      ),
    );
  }
}
