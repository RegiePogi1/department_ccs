import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow[100],
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('About CCS', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          const Text('The College of Computer Studies (CCS) provides quality education and training in computer science, information technology, and related fields.'),
          const SizedBox(height: 12),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset('assets/services.jpg', fit: BoxFit.cover),
          ),
          const SizedBox(height: 12),
          const Text('Core Values (QuEST)', style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 6),
          const Text('Quality, Excellence, Service, and Truth'),
        ],
      ),
      ),
    );
  }
}
