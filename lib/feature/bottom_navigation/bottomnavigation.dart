//
// import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
// import 'package:flutter/material.dart';
//
// class BottomNavExample extends StatefulWidget {
//   const BottomNavExample({Key? key}) : super(key: key);
//
//   @override
//   State<BottomNavExample> createState() => _BottomNavExampleState();
// }
//
// class _BottomNavExampleState extends State<BottomNavExample> {
//   final iconList = <IconData>[
//     Icons.home,
//     Icons.search,
//     Icons.favorite,
//     Icons.person,
//   ];
//
//   int _bottomNavIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Text(
//           "Page $_bottomNavIndex",
//           style: const TextStyle(fontSize: 24),
//         ),
//       ),
//
//       // Floating Action Button
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           // FAB action
//         },
//         backgroundColor: Colors.red,
//         child: const Icon(Icons.add),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//
//       // Fixed Bottom Navigation Bar
//       bottomNavigationBar: AnimatedBottomNavigationBar(
//         icons: iconList,
//         activeIndex: _bottomNavIndex,
//         gapLocation: GapLocation.center,
//         notchSmoothness: NotchSmoothness.softEdge,
//         onTap: (index) => setState(() => _bottomNavIndex = index),
//         backgroundColor: Colors.white,
//         activeColor: Colors.red,
//         inactiveColor: Colors.grey,
//         splashColor: Colors.redAccent,
//       ),
//     );
//   }
// }
