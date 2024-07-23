import 'package:flutter/material.dart';
import 'package:google_maps/pages/google_maps_screen.dart';

class Mugshot extends StatelessWidget {
  const Mugshot({super.key});

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
                    'images/mugshot.jpeg',
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
                          'The Mugshot Cafe',
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
                                            const MugshotCafe())),
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
                              'Specializes in serving freshly brewed coffee, artisan bagels, and a variety of breakfast and brunch items.\n\nMenu includes a selection of pastries, sandwiches, yogurt with homemade granola, and freshly squeezed juices.\n\nFamous for its range of bagels with various fillings, including smoked salmon, bacon, and cream cheese.\n\nFeatures a cozy and rustic interior with wooden furnishings, exposed brick walls, and vintage decor.',
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
