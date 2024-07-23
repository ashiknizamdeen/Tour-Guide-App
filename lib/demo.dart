import 'package:flutter/material.dart';
import 'package:google_maps/pages/google_maps_screen.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class MapScreen extends StatelessWidget {
  MapScreen({super.key});
  final websiteUri1 = Uri.parse('https://pub.dev/packages/url_launcher/');
  final websiteUri2 = Uri.parse(
      'https://play.google.com/store/apps/details?id=my.com.tngdigital.ewallet');

  // Future<void> _launchGoogleMaps(String googleMapsUrl) async {
  //   if (!await canLaunchUrl(Uri.parse('googleMapsUrl'))) {
  //     throw Exception('Could not launch $googleMapsUrl');
  //   }
  // }

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Google maps'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Penang',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Container(
              alignment: Alignment.center,
              child: IconButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GoogleMapScreen())),
                  icon: Image.asset(
                    'images/google_maps.png', // Replace with the path to your image asset
                    width: 45,
                    height: 45,
                  )),
            ),
            Container(
              alignment: Alignment.center,
              child: IconButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GoogleScreen())),
                  icon: Image.asset(
                    'images/google_maps.png', // Replace with the path to your image asset
                    width: 45,
                    height: 45,
                  )),
            ),
            Container(
              alignment: Alignment.center,
              child: IconButton(
                  onPressed: () => {
                        launchUrl(websiteUri1,
                            mode: LaunchMode.externalApplication)
                      },
                  icon: Image.asset(
                    'images/google_maps.png', // Replace with the path to your image asset
                    width: 45,
                    height: 45,
                  )),
            ),
            Container(
              alignment: Alignment.center,
              child: IconButton(
                  onPressed: () => {
                        launchUrl(websiteUri2,
                            mode: LaunchMode.externalApplication)
                      },
                  icon: Image.asset(
                    'images/google_maps.png', // Replace with the path to your image asset
                    width: 45,
                    height: 45,
                  )),
            )
          ],
        ),
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: const NavigationBarThemeData(
            indicatorColor: Color.fromARGB(255, 161, 169, 176),
            labelTextStyle: MaterialStatePropertyAll(
                TextStyle(fontSize: 14, fontWeight: FontWeight.w500))),
        child: NavigationBar(
            height: 70,
            backgroundColor: const Color(0xFFf1f5fb),
            selectedIndex: 0,
            destinations: const <Widget>[
              NavigationDestination(
                selectedIcon: Icon(Icons.home),
                icon: Icon(Icons.home_outlined),
                label: 'Home',
              ),
              NavigationDestination(
                icon: Badge(child: Icon(Icons.camera_alt_sharp)),
                label: 'Camera',
              )
            ]),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () => Navigator.push(context,
      //       MaterialPageRoute(builder: (context) => const GoogleMapScreen())),
      //   tooltip: 'increment',
      // ),
    );
  }
}
