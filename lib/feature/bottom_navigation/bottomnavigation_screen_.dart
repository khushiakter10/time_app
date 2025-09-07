// import 'package:flutter/material.dart';
// import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
//
// class BottomNavWithFab extends StatefulWidget {
//   const BottomNavWithFab({Key? key}) : super(key: key);
//
//   @override
//   State<BottomNavWithFab> createState() => _BottomNavWithFabState();
// }
//
// class _BottomNavWithFabState extends State<BottomNavWithFab> {
//   final iconList = <IconData>[
//     Icons.home,
//     Icons.search,
//     Icons.favorite,
//     Icons.person,
//   ];
//
//   int _bottomNavIndex = 0;
//
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
//       // 🔹 Destination screen changes with index
//       body: _pages[_bottomNavIndex],
//
//       // 🔹 Floating Action Button
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           // FAB action (example: go to Add screen)
//           ScaffoldMessenger.of(context).showSnackBar(
//             const SnackBar(content: Text("FAB tapped!")),
//           );
//         },
//         backgroundColor: Colors.red,
//         child: const Icon(Icons.add),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//
//       // 🔹 Animated Bottom Navigation Bar
//       bottomNavigationBar: AnimatedBottomNavigationBar(
//         icons: iconList,
//         activeIndex: _bottomNavIndex,
//         gapLocation: GapLocation.center,
//         notchSmoothness: NotchSmoothness.verySmoothEdge, // smooth notch
//         leftCornerRadius: 32,  // rounded left corner
//         rightCornerRadius: 32, // rounded right corner
//         onTap: (index) => setState(() => _bottomNavIndex = index),
//         backgroundColor: Colors.white,
//         activeColor: Colors.red,
//         inactiveColor: Colors.grey,
//         splashColor: Colors.redAccent,
//       ),
//     );
//   }
// }
//
// void main() {
//   runApp(const MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: BottomNavWithFab(),
//   ));
// }







import 'package:get/get.dart';

class InternetController extends GetxController {
  var isConnected = true.obs;

  // Example method to simulate connection change
  void updateConnectionStatus(bool status) {
    isConnected.value = status;
  }
}
