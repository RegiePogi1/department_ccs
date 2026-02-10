import 'package:flutter/material.dart';

class OfficersScreen extends StatelessWidget {
  const OfficersScreen({super.key});

  final List<Map<String, String>> _officers = const [
    {'name': 'Dr. Alice Reyes', 'role': 'Head, CCS', 'photo': 'https://via.placeholder.com/150'},
    {'name': 'Mr. John Santos', 'role': 'Secretary', 'photo': 'https://via.placeholder.com/150'},
    {'name': 'Ms. Maria Cruz', 'role': 'Coordinator', 'photo': 'https://via.placeholder.com/150'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(12),
      itemCount: _officers.length,
      itemBuilder: (context, index) {
        final officer = _officers[index];
        return Card(
          margin: const EdgeInsets.symmetric(vertical: 8),
          child: ListTile(
            leading: CircleAvatar(backgroundImage: NetworkImage(officer['photo']!)),
            title: Text(officer['name']!),
            subtitle: Text(officer['role']!),
          ),
        );
      },
    );
  }
}
