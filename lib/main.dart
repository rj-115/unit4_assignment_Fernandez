import 'package:flutter/material.dart';

void main() {
  runApp(MyProfile());
}

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        appBar: AppBar(
          title: const Text(
            'RHESTY JOHN J. FERNANDEZ',
            style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 234, 154, 57),
                        width: 3),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          'assets/images/pic.jpg',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        'RHESTY JOHN J. FERNANDEZ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 234, 154, 57),
                        width: 3),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      _buildInfoRow(Icons.cake, 'Birthday', 'January 15, 2003'),
                      _spacing(),
                      _buildInfoRow(Icons.email, 'Email',
                          'rhestyjohn.fernandez@wvsu.edu.ph'),
                      _spacing(),
                      _buildInfoRow(Icons.phone, 'Phone', '09953438936'),
                      _spacing(),
                      _buildInfoRow(
                          Icons.home, 'Address', 'San Dionisio, Iloilo'),
                      _spacing(),
                      _buildInfoRow(Icons.school, 'School',
                          'West Visayas State University'),
                      _spacing(),
                      _buildInfoRow(Icons.book_sharp, 'Course',
                          'Bachelor of Science in Information Technology'),
                      _spacing(),
                      _buildInfoRow(Icons.music_note, 'Favorite Singer',
                          'Taylor Swift, Mico, Christian French, Charlie Burg, Red Velvet, Dreamcatcher'),
                      _spacing(),
                      _buildInfoRow(Icons.favorite, 'Hobbies',
                          'Studying, Sleeping, Reading, Playing Games'),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 234, 154, 57),
                        width: 3),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  padding: const EdgeInsets.all(25.0),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'My Biography',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Rhesty John Fernandez is a passionate IT student at West Visayas State University, driven to excel in the field of technology. With a keen interest in software development and network management, Rhesty is dedicated to honing his technical skills and expanding his knowledge in the vast field of information technology.',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _spacing() {
    return const SizedBox(height: 10);
  }

  Widget _buildInfoRow(IconData icon, String label, String data) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(icon, size: 50, color: const Color.fromARGB(225, 252, 149, 15)),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
                bottom: 5.0, top: 5.0, left: 20.0, right: 100.00),
            child: Text(
              label,
              style: const TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding:
                const EdgeInsets.only(bottom: 10.0, top: 10.0, right: 10.0),
            child: Text(
              data,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
