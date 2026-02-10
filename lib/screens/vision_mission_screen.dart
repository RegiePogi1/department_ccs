import 'package:flutter/material.dart';

class VisionMissionScreen extends StatelessWidget {
  const VisionMissionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow[100],
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Vision & Mission',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          const SizedBox(height: 12),
          const Text('Vision', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          const Text('To be Bicol\'s leading provider of high quality, transformative, industry - oriented, and affordable information technology education that is constantly responsive to the demands of the highly competitive global community.'),
          const SizedBox(height: 16),
          const Text('Mission', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          const Text('We are  committed to develop God - loving, highly - competent, ethical, socially responsible, and globally - aware information technology professionals who will be the pro - active partners of society in nation building'),
        ],
      ),
      ),
    );
  }
}
