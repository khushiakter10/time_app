// import 'package:flutter/material.dart';
// import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
//
// class KhusNavigation extends StatefulWidget {
//   const KhusNavigation({Key? key}) : super(key: key);
//
//   @override
//   State<KhusNavigation> createState() => _KhusNavigationState();
// }
//
// class _KhusNavigationState extends State<KhusNavigation> {
//   int _index = 0;
//
//   // Pages for each tab
//   final List<Widget> _pages = const [
//     Center(child: Text("🏠 Home Page", style: TextStyle(fontSize: 24))),
//     Center(child: Text("🔍 Search Page", style: TextStyle(fontSize: 24))),
//     Center(child: Text("❤️ Favorite Page", style: TextStyle(fontSize: 24))),
//     Center(child: Text("👤 Profile Page", style: TextStyle(fontSize: 24))),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBody: true, // so the navbar floats above body
//       body: _pages[_index],
//
//       // Floating Action Button
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           ScaffoldMessenger.of(context).showSnackBar(
//             const SnackBar(content: Text("FAB tapped!")),
//           );
//         },
//         backgroundColor: Colors.red,
//         child: const Icon(Icons.add),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//
//       // Floating Bottom Navigation Bar
//       bottomNavigationBar: FloatingNavbar(
//         backgroundColor: Colors.white,
//         selectedBackgroundColor: Colors.red,
//         selectedItemColor: Colors.white,
//         unselectedItemColor: Colors.grey,
//         borderRadius: 16,
//         currentIndex: _index,
//         onTap: (val) => setState(() => _index = val),
//         items:  [
//           FloatingNavbarItem(icon: Icons.home, title: "Home"),
//           FloatingNavbarItem(icon: Icons.search, title: "Search"),
//           FloatingNavbarItem(icon: Icons.favorite, title: "Favorite"),
//           FloatingNavbarItem(icon: Icons.person, title: "Profile"),
//         ],
//       ),
//     );
//   }
// }