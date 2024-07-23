import 'package:flutter/material.dart';
import 'package:google_maps/pages/google_maps_screen.dart';

class HotelNeoplus extends StatelessWidget {
  const HotelNeoplus({super.key});

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
                    'images/hotel_neo+.jpg',
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
                          'Neo+ Hotel',
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
                                        builder: (context) => const Neoplus())),
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
                              'Hotel NEO+ Penang is a contemporary hotel located in the heart of George Town, Penang.\n\nKnown for its modern design, comfortable accommodations, and strategic location, making it ideal for both business and leisure travelers.\n\nOffers a variety of room types including standard rooms, superior rooms, and suites.\n\nEquipped with meeting rooms and event spaces suitable for conferences, seminars, and social gatherings.',
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
