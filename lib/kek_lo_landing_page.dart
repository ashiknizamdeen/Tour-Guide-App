import 'package:flutter/material.dart';
import 'package:google_maps/pages/google_maps_screen.dart';

class KekLo extends StatelessWidget {
  const KekLo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 350.0,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    'images/kek_lo_si_temple.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                  Container(
                    height: 500,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0)),
                      color: Color.fromARGB(255, 243, 226, 223),
                    ),
                    padding: const EdgeInsets.all(10.0),
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Kek Lo Si Temple',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        Row(
                          children: [
                            IconButton(
                                onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const GoogleMapScreen())),
                                icon: Image.asset(
                                  'images/google_maps.png', // Replace with the path to your image asset
                                  width: 45,
                                  height: 45,
                                )),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Click to see location',
                                style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 16.0),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10.0),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'This seven-story pagoda is a stunning fusion of Chinese, Thai, and Burmese architectural styles. Climb to the top for panoramic views of Penang Island.\n\nThe 36.5-meter-tall bronze statue of the Goddess of Mercy is a sight to behold. Take the incline lift or walk up the stairs to reach her pavilion.\n\nExplore the various halls and pavilions adorned with intricate carvings, sculptures, and murals depicting Buddhist teachings.\n\nEnjoy delicious and affordable vegetarian dishes at the temples food court.',
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
