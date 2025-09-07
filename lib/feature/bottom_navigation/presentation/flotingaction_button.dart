// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// // Example dummy provider
// class DummyProvider with ChangeNotifier {}
//
// // Providers list
// final providers = [
//   ChangeNotifierProvider(create: (_) => DummyProvider()),
// ];
//
//
// class KhusNavigation extends StatefulWidget {
//   const KhusNavigation({super.key});
//
//   @override
//   State<KhusNavigation> createState() => _KhusNavigationState();
// }
//
// class _KhusNavigationState extends State<KhusNavigation> {
//   int _currentIndex = 0;
//
//   final List<Widget> _pages = const [
//     Center(child: Text("Home Page")),
//     Center(child: Text("Explore Page")),
//     Center(child: Text("Chats Page")),
//     Center(child: Text("Settings Page")),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _pages[_currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         type: BottomNavigationBarType.fixed,
//         onTap: (val) {
//           setState(() {
//             _currentIndex = val;
//           });
//         },
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
//           BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline), label: 'Chats'),
//           BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
//         ],
//       ),
//     );
//   }
// }





import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const KhusNavigation(),
    );
  }
}

class KhusNavigation extends StatefulWidget {
  const KhusNavigation({super.key});

  @override
  State<KhusNavigation> createState() => _KhusNavigationState();
}

class _KhusNavigationState extends State<KhusNavigation> {
  int currentIndex = 0;

  final List<Widget> screens = [
    const Center(child: Text('Home Screen')),
    const Center(child: Text('Search Screen')),
    const Center(child: Text('Profile Screen')),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(

        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),

        ],
      ),
    );
  }
}
