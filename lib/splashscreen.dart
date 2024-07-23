// splash_screen.dart
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'main_pag.dart'; // Import MainScreen here

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 150,
              width: 120,
              child: Image(
                image: AssetImage('images/App_Icon.png'),
              ),
            ),
            Text(
              'WanderWise',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      duration: 1500,
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: const Color.fromARGB(255, 245, 237, 237),
      nextScreen: const MainScreen(), // Navigate to MainScreen
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:google_maps/demo.dart';

// class Splash extends StatefulWidget {
//   const Splash({super.key});

//   @override
//   State<Splash> createState() => _SplashState();
// }

// class _SplashState extends State<Splash> {
//   @override
//   void initState() {
//     super.initState();
//     // _navigatetohome();
//   }

//   _navigatetohome() async {
//     await Future.delayed(const Duration(milliseconds: 3000), () {});
//     if (mounted) {
//       Navigator.pushReplacement(
//           context, MaterialPageRoute(builder: (context) => MapScreen()));
//     }
//   }

//   final navigatorKey = GlobalKey<NavigatorState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               height: 100,
//               width: 100,
//               color: Colors.blue,
//             ),
//             const Text(
//               'Wanderwise',
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
