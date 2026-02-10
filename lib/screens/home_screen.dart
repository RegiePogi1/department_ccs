import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Welcome to the CCS Department',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'College of Computer Studies (CCS). Explore Vision & Mission, Officers, Contact details and About page.',
            ),
            const SizedBox(height: 16),

            // 🔵 Circle asset icon
            Center(
              child: SizedBox(
                height: 180,
                width: 180,
                child: CircleAvatar(
                  radius: 90,
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  backgroundImage: const AssetImage('assets/icon.png'),
                ),
              ),
            ),

            const SizedBox(height: 16),
            const Text(
              'Use the menu (top-left) to navigate to Vision & Mission, Officers, Contact, and About.',
            ),
          ],
        ),
      ),
    );
  }
}
