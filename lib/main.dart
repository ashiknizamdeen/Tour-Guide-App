// main.dart
import 'package:flutter/material.dart';
import 'package:google_maps/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: const SplashScreen(), // Start with SplashScreen
    );
  }
}


// import 'package:animated_splash_screen/animated_splash_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:google_maps/main_pag.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primaryColor: Colors.white,
//       ),
//       home: AnimatedSplashScreen(
//           splash: const Center(
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 SizedBox(
//                   height: 150,
//                   width: 120,
//                   child: Image(
//                     image: AssetImage('images/App_Icon.png'),
//                   ),
//                 ),
//                 Text(
//                   'WanderWise',
//                   style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//                 )
//               ],
//             ),
//           ),
//           duration: 1500,
//           splashTransition: SplashTransition.fadeTransition,
//           backgroundColor: const Color.fromARGB(255, 245, 237, 237),
//           nextScreen: const MainScreen()),
          
//     );
//   }
// }

          // Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         Image(
          //           image: AssetImage('images/App_Icon.png'),
          //           width: 100,
          //           height: 100,
          //         ),
          //         // SizedBox(width: 10),
          //         // Text(
          //         //   'Wanderwise',
          //         //   style:
          //         //       TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          //         // )
          //       ],
          //     ),
          //     // SizedBox(height: 10),
          //     // Text(
          //     //   'Your Smart Tour Guide App.',
          //     //   style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          //     // )
          //   ],
          // ),

// class MapScreen extends StatefulWidget {
//   const MapScreen({super.key});

//   @override
//   State<MapScreen> createState() => _MapScreenState();
// }

// class _MapScreenState extends State<MapScreen> {
//   static const _initialCameraPosition =
//       CameraPosition(target: LatLng(37.773972, -112.431297), zoom: 11.5);

//   late GoogleMapController _googleMapController;
//   late Marker _origin;
//   late Marker _destination;

//   @override
//   void dispose() {
//     // TODO: implement dispose
//     _googleMapController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GoogleMap(
//         myLocationButtonEnabled: false,
//         zoomControlsEnabled: false,
//         initialCameraPosition: _initialCameraPosition,
//         onMapCreated: (controller) => _googleMapController = controller,
//         markers: {
//           _origin,
//           _destination
//         },
//         onLongPress: _addMarker,
//       ),
//       floatingActionButton: FloatingActionButton(
//         backgroundColor: Theme.of(context).primaryColor,
//         foregroundColor: Colors.black,
//         onPressed: () => _googleMapController.animateCamera(
//             CameraUpdate.newCameraPosition(_initialCameraPosition)),
//         child: const Icon(Icons.center_focus_strong),
//       ),
//     );
//   }
// }

// void _addMarker(LatLng pos) {

//   if (_origin == null || (_origin != null && _destination != null)) {
//     setState( () {
//       _origin = Marker(
//         markerId: const markerId('origin'),
//         infoWindow: const InfoWindow(title: 'origin'),
//         icon:
//             BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
//         position: pos,);
//     });
//   } else {}
// }
