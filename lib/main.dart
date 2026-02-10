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
      body: Column(
        children: [
          // Top Navigation Bar
          Container(
            color: Colors.green[800],
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _topNavItem('Home', 0, Icons.home),
                  _topNavItem('Vision & Mission', 1, Icons.flag),
                  _topNavItem('Officers', 2, Icons.group),
                  _topNavItem('Contact', 3, Icons.contact_phone),
                  _topNavItem('About', 4, Icons.info),
                ],
              ),
            ),
          ),
          // Main Content
          Expanded(
            child: IndexedStack(
              index: _selectedIndex,
              children: _pages,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _selectIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flag),
            label: 'Vision',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Officers',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_phone),
            label: 'Contact',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'About',
          ),
        ],
      ),
    );
  }

  Widget _topNavItem(String label, int index, IconData icon) {
    final isSelected = _selectedIndex == index;
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () => _selectIndex(index),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: isSelected ? Colors.white : Colors.transparent,
                width: 3,
              ),
            ),
          ),
          child: Row(
            children: [
              Icon(icon, color: Colors.white, size: 20),
              const SizedBox(width: 8),
              Text(
                label,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
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
