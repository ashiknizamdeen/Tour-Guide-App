import 'package:flutter/material.dart';
import 'package:google_maps/pages/google_maps_screen.dart';

class BatuFerinngi extends StatelessWidget {
  const BatuFerinngi({super.key});

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
                    'images/Batu Ferringhi Beach.jpg',
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
                          'Batu Ferringhi Beach',
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
                                            const BatuFeringi())),
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
                          child: Text(
                            'Visitors can enjoy a variety of water sports and activities, including jet skiing, parasailing, windsurfing, and banana boat rides.\n\nVisitors can enjoy a variety of water sports and activities, including jet skiing, parasailing, windsurfing, and banana boat rides.\n\nThe beach is also ideal for swimming, sunbathing, and building sandcastles.\n\nBatu Ferringhi is famous for its vibrant night market, which operates every evening along the main street.',
                            style: TextStyle(fontSize: 15.0),
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
