import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
import 'screens/vision_mission_screen.dart';
import 'screens/officers_screen.dart';
import 'screens/contact_screen.dart';
import 'screens/about_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CCS Department',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green[900]!),
        useMaterial3: true,
      ),
      home: const DepartmentApp(),
    );
  }
}

class DepartmentApp extends StatefulWidget {
  const DepartmentApp({super.key});

  @override
  State<DepartmentApp> createState() => _DepartmentAppState();
}

class _DepartmentAppState extends State<DepartmentApp> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    HomeScreen(),
    VisionMissionScreen(),
    OfficersScreen(),
    ContactScreen(),
    AboutScreen(),
  ];

  void _selectIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: Colors.green[900],
            borderRadius: BorderRadius.circular(4),
          ),
          child: const Text('CCS Department', style: TextStyle(color: Colors.white)),
        ),
        backgroundColor: Colors.green[900],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green[900],
              ),
              child: const Text(
                'CCS Department',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            _drawerItem(Icons.home, 'Home', 0),
            _drawerItem(Icons.flag, 'Vision & Mission', 1),
            _drawerItem(Icons.group, 'Officers', 2),
            _drawerItem(Icons.contact_phone, 'Contact', 3),
            _drawerItem(Icons.info, 'About', 4),
          ],
        ),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
    );
  }

  ListTile _drawerItem(IconData icon, String text, int index) {
    return ListTile(
      leading: Icon(icon),
      title: Text(text),
      onTap: () {
        Navigator.pop(context);
        _selectIndex(index);
      },
    );
  }
}
