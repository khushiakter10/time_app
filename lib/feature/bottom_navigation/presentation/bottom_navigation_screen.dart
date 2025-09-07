import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class DummyProvider with ChangeNotifier {}

// Providers list
final providers = [
  ChangeNotifierProvider(create: (_) => DummyProvider()),
];

class KhusNavigation extends StatefulWidget {
  const KhusNavigation({super.key});

  @override
  State<KhusNavigation> createState() => _KhusNavigationState();
}

class _KhusNavigationState extends State<KhusNavigation> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    Center(child: Text("Home Page")),
    Center(child: Text("Explore Page")),
    Center(child: Text("Chats Page")),
    Center(child: Text("Settings Page")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight:  Radius.circular(12),
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            currentIndex: _currentIndex,
            type: BottomNavigationBarType.fixed,
            onTap: (val) {
              setState(() {
                _currentIndex = val;
              });
            },

            selectedFontSize: 12,
            unselectedFontSize: 12,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.black54,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),  // unselected icon
                activeIcon: Icon(Icons.home),     // selected icon
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.explore_outlined),
                activeIcon: Icon(Icons.explore),
                label: 'Explore',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble_outline),
                activeIcon: Icon(Icons.chat_bubble),
                label: 'Chats',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings_outlined),
                activeIcon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
          ),
        ),
      ),
    );
  }
}


