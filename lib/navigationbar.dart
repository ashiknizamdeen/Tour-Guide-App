// import 'package:flutter/material.dart';
// import 'camera.dart';
// import 'main_pag.dart';

// class NavigationBar extends StatefulWidget {
//   const NavigationBar({super.key});

//   @override
//   State<NavigationBar> createState() => _NavigationBarState();
// }

// class _NavigationBarState extends State<NavigationBar> {
//   int myIndex = 0;
//   List<Widget> widgetList = const [
//     MainScreen(),
//     Camera(),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: IndexedStack(
//           index: myIndex,
//           children: widgetList,
//         ),
//         bottomNavigationBar: BottomNavigationBar(
//             showUnselectedLabels: false,
//             type: BottomNavigationBarType.shifting,
//             onTap: (index) {
//               setState(() {
//                 myIndex = index;
//               });
//             },
//             currentIndex: myIndex,
//             items: const [
//               BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//               BottomNavigationBarItem(
//                   icon: Icon(Icons.camera), label: 'Camera'),
//             ]));
//   }
// }
