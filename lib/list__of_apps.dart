import 'package:flutter/material.dart';
import 'package:google_maps/Tngo.dart';
import 'package:google_maps/carousel.dart';
import 'package:google_maps/foodpanda.dart';
import 'package:google_maps/grab.dart';
import 'package:google_maps/lazada.dart';
import 'package:google_maps/moovit.dart';
import 'package:google_maps/shopee.dart';
import 'package:google_maps/waze.dart';

class ListofApps extends StatelessWidget {
  const ListofApps({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey.shade400,
        toolbarHeight: 90,
        title: Row(children: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back,
                  color: Colors.blueGrey, size: 30)),
          Container(
            clipBehavior: Clip.hardEdge,
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(15.0)),
            child: const SizedBox(
              width: 70,
              height: 70,
              child: Image(image: AssetImage('images/App_Icon.png')),
            ),
          ),
          const SizedBox(width: 20),
          const Text(
            "Apps commonly used",
            style: TextStyle(fontWeight: FontWeight.w500),
          )
        ]),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
            child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FoodPanda()));
                  },
                  child: Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.all(20),
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(28.0),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 5,
                                  blurRadius: 2,
                                  offset: const Offset(0, 6),
                                ),
                              ]),
                          width: 130,
                          height: 130,
                          child: Image.asset(
                            'images/Foodpanda icon.png',
                            width: 130,
                            height: 130,
                            fit: BoxFit.cover,
                          )),
                      const Text(
                        'Foodpanda',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Grab()));
                  },
                  child: Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.all(20),
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(28.0),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 5,
                                  blurRadius: 2,
                                  offset: const Offset(0, 6),
                                ),
                              ]),
                          width: 130,
                          height: 130,
                          child: Image.asset(
                            'images/Grab-icon.png',
                            width: 130,
                            height: 130,
                            fit: BoxFit.cover,
                          )),
                      const Text(
                        'Grab',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Tngo()));
                  },
                  child: Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.all(20),
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(28.0),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 5,
                                  blurRadius: 2,
                                  offset: const Offset(0, 6),
                                ),
                              ]),
                          width: 130,
                          height: 130,
                          child: Image.asset(
                            'images/Tngo-icon.png',
                            width: 130,
                            height: 130,
                            fit: BoxFit.cover,
                          )),
                      const Text(
                        'Touch n go',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Moovit()));
                  },
                  child: Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.all(20),
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(28.0),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 5,
                                  blurRadius: 2,
                                  offset: const Offset(0, 6),
                                ),
                              ]),
                          width: 130,
                          height: 130,
                          child: Image.asset(
                            'images/Moovit-app-logo.png',
                            width: 130,
                            height: 130,
                            fit: BoxFit.cover,
                          )),
                      const Text(
                        'Moovit',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Lazada()));
                  },
                  child: Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.all(20),
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(28.0),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 5,
                                  blurRadius: 2,
                                  offset: const Offset(0, 6),
                                ),
                              ]),
                          width: 130,
                          height: 130,
                          child: Image.asset(
                            'images/lazada-icon.jpg',
                            width: 130,
                            height: 130,
                            fit: BoxFit.cover,
                          )),
                      const Text(
                        'Lazada',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Shopee()));
                  },
                  child: Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.all(20),
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(28.0),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 5,
                                  blurRadius: 2,
                                  offset: const Offset(0, 6),
                                ),
                              ]),
                          width: 130,
                          height: 130,
                          child: Image.asset(
                            'images/shopee-icon.png',
                            width: 130,
                            height: 130,
                            fit: BoxFit.cover,
                          )),
                      const Text(
                        'Shopee',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Carousel()));
                  },
                  child: Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.all(20),
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(28.0),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 5,
                                  blurRadius: 2,
                                  offset: const Offset(0, 6),
                                ),
                              ]),
                          width: 130,
                          height: 130,
                          child: Image.asset(
                            'images/Carousel.png',
                            width: 130,
                            height: 130,
                            fit: BoxFit.cover,
                          )),
                      const Text(
                        'Carousel',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Waze()));
                  },
                  child: Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.all(20),
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(28.0),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 5,
                                  blurRadius: 2,
                                  offset: const Offset(0, 6),
                                ),
                              ]),
                          width: 130,
                          height: 130,
                          child: Image.asset(
                            'images/Waze-icon.jpg',
                            width: 130,
                            height: 130,
                            fit: BoxFit.cover,
                          )),
                      const Text(
                        'Waze',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
