import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow[100],
      child: SafeArea(
        child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Contact', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage('assets/icon.png'),
                ),
                title: const Text('NCFCCS'),
                subtitle: const Text('Contact us on Facebook\nhttps://www.facebook.com/NCFCCS'),
                trailing: const Icon(Icons.facebook, color: Colors.blue),
                onTap: () {},
              ),
            ),
            const SizedBox(height: 12),
            const Text('Office Hours', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 4),
            const Text('Mon - Sat: 8:00 AM - 5:00 PM'),
          ],
        ),
      ),
      ),
    );
  }
}
