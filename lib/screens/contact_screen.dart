import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Contact', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 12),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('123 University Ave, Cityname'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('+1 (555) 123-4567'),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('ccs@university.edu'),
            ),
            SizedBox(height: 12),
            Text('Office Hours', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 4),
            Text('Mon - Fri: 8:00 AM - 5:00 PM'),
          ],
        ),
      ),
    );
  }
}
