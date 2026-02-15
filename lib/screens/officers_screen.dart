import 'package:flutter/material.dart';

class OfficersScreen extends StatelessWidget {
  const OfficersScreen({super.key});

  final List<Map<String, String>> _officers = const [
    {'name': 'Kurt Basti Tacorda', 'role': 'Governor, CCS'},
    {'name': 'Christian Mancera', 'role': 'Vice Governor, CCS'},
    {'name': 'Rayza Rances', 'role': 'Secretary, CCS'},
    {'name': 'Jelian Norte', 'role': 'Treasurer, CCS'},
    {'name': 'Angela Lazaro', 'role': 'Assistant Treasurer, CCS'},
    {'name': 'Kim Baider', 'role': 'Auditor, CCS'},
    {'name': 'Krrryl Faye Arañez', 'role': 'Assistant Auditor, CCS'},
    {'name': 'Jhazel Rañola', 'role': 'Business Manager, CCS'},
    {'name': 'Princess Hannah Mae Bio', 'role': 'P.R.O, CCS'},
    {'name': 'Mary Ann Constantino', 'role': 'Assistant P.R.O, CCS'},
    {'name': 'Janel Mirasol', 'role': '1st Year Representative, CCS'},
    {'name': 'Elmer Jouit Mailom', 'role': '2nd Year Representative, CCS'},
    {'name': 'Ernie Jesus Dadea', 'role': '3rd Year Representative, CCS'},
    
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow[100],
      child: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: _officers.length,
        itemBuilder: (context, index) {
          final officer = _officers[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8),
            color: Colors.green[900],
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green[700],
                child: const Icon(Icons.person, color: Colors.white),
              ),
              title: Text(
                officer['name']!,
                style: const TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                officer['role']!,
                style: const TextStyle(color: Colors.white70),
              ),
            ),
          );
        },
      ),
    );
  }
}
