// home_screen.dart
import 'package:flutter/material.dart';
import 'package:medical_health/screens/doctor_detail_screen/doctor_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> doctors = [
    {
      "id": 1,
      "name": "Dr. Alexander Bennett, Ph.D.",
      "specialty": "Dermato-Genetics",
      "profileImage": "https://via.placeholder.com/150",
      "experience": "10 years",
      "education": "Harvard University",
      "location": "New York, NY",
      "contact": "123-456-7890",
      "rating": "4.5/5"
    },
    {
      "id": 2,
      "name": "Dr. Michael Davidson, M.D.",
      "specialty": "Solar Dermatology",
      "profileImage": "https://via.placeholder.com/150",
      "experience": "8 years",
      "education": "Stanford University",
      "location": "Los Angeles, CA",
      "contact": "234-567-8901",
      "rating": "4.7/5"
    },
    {
      "id": 3,
      "name": "Dr. Olivia Turner, M.D.",
      "specialty": "Dermato-Endocrinology",
      "profileImage": "https://via.placeholder.com/150",
      "experience": "5 years",
      "education": "University of California, San Francisco",
      "location": "San Francisco, CA",
      "contact": "345-678-9012",
      "rating": "4.8/5"
    },
    {
      "id": 4,
      "name": "Dr. Sophia Martinez, Ph.D.",
      "specialty": "Cosmetic Bioengineering",
      "profileImage": "https://via.placeholder.com/150",
      "experience": "12 years",
      "education": "MIT",
      "location": "Boston, MA",
      "contact": "456-789-0123",
      "rating": "4.6/5"
    },
    {
      "id": 5,
      "name": "Dr. Ethan Cooper, M.D.",
      "specialty": "Pediatric Dermatology",
      "profileImage": "https://via.placeholder.com/150",
      "experience": "7 years",
      "education": "Yale University",
      "location": "Chicago, IL",
      "contact": "567-890-1234",
      "rating": "4.4/5"
    },
    {
      "id": 6,
      "name": "Dr. Isabella Clark, M.D.",
      "specialty": "Skin Cancer Surgery",
      "profileImage": "https://via.placeholder.com/150",
      "experience": "15 years",
      "education": "Johns Hopkins University",
      "location": "Miami, FL",
      "contact": "678-901-2345",
      "rating": "4.9/5"
    },
    {
      "id": 7,
      "name": "Dr. Liam Harris, Ph.D.",
      "specialty": "Aesthetic Dermatology",
      "profileImage": "https://via.placeholder.com/150",
      "experience": "9 years",
      "education": "University of Oxford",
      "location": "Dallas, TX",
      "contact": "789-012-3456",
      "rating": "4.3/5"
    },
    {
      "id": 8,
      "name": "Dr. Ava Wilson, M.D.",
      "specialty": "Hair Restoration",
      "profileImage": "https://via.placeholder.com/150",
      "experience": "6 years",
      "education": "Columbia University",
      "location": "Austin, TX",
      "contact": "890-123-4567",
      "rating": "4.6/5"
    },
    {
      "id": 9,
      "name": "Dr. Mia Lee, Ph.D.",
      "specialty": "Cosmetic Surgery",
      "profileImage": "https://via.placeholder.com/150",
      "experience": "14 years",
      "education": "University of Cambridge",
      "location": "Seattle, WA",
      "contact": "901-234-5678",
      "rating": "4.7/5"
    },
    {
      "id": 10,
      "name": "Dr. James King, M.D.",
      "specialty": "Dermatopathology",
      "profileImage": "https://via.placeholder.com/150",
      "experience": "11 years",
      "education": "Harvard University",
      "location": "San Diego, CA",
      "contact": "012-345-6789",
      "rating": "4.8/5"
    },
    {
      "id": 11,
      "name": "Dr. Charlotte Scott, M.D.",
      "specialty": "Allergy Dermatology",
      "profileImage": "https://via.placeholder.com/150",
      "experience": "10 years",
      "education": "University of California, Los Angeles",
      "location": "New York, NY",
      "contact": "123-456-7890",
      "rating": "4.5/5"
    },
    {
      "id": 12,
      "name": "Dr. Lucas Green, Ph.D.",
      "specialty": "Clinical Dermatology",
      "profileImage": "https://via.placeholder.com/150",
      "experience": "13 years",
      "education": "Stanford University",
      "location": "Chicago, IL",
      "contact": "234-567-8901",
      "rating": "4.6/5"
    },
    {
      "id": 13,
      "name": "Dr. Lily Adams, M.D.",
      "specialty": "Geriatric Dermatology",
      "profileImage": "https://via.placeholder.com/150",
      "experience": "9 years",
      "education": "University of Chicago",
      "location": "Los Angeles, CA",
      "contact": "345-678-9012",
      "rating": "4.7/5"
    },
    {
      "id": 14,
      "name": "Dr. Benjamin Moore, M.D.",
      "specialty": "Cosmetic Dermatology",
      "profileImage": "https://via.placeholder.com/150",
      "experience": "16 years",
      "education": "University of California, San Francisco",
      "location": "San Francisco, CA",
      "contact": "456-789-0123",
      "rating": "4.9/5"
    },
    {
      "id": 15,
      "name": "Dr. Emma Taylor, Ph.D.",
      "specialty": "Skin Regeneration",
      "profileImage": "https://via.placeholder.com/150",
      "experience": "7 years",
      "education": "MIT",
      "location": "Boston, MA",
      "contact": "567-890-1234",
      "rating": "4.4/5"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Doctors"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: doctors.length,
        itemBuilder: (context, index) {
          final doctor = doctors[index];
          return Card(
            margin: EdgeInsets.only(bottom: 16.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 4,
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(doctor["profileImage"]),
                radius: 30,
              ),
              title: Text(
                doctor["name"],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(doctor["specialty"]),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DoctorDetailScreen(doctor: doctor),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
