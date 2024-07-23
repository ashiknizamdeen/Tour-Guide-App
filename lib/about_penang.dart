import 'package:flutter/material.dart';
import 'package:google_maps/hotels.dart';
import 'package:google_maps/restaurantsncafe.dart';
import 'package:google_maps/site_to_visit.dart';

class Aboutpenang extends StatelessWidget {
  const Aboutpenang({super.key});

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
              "Penang",
              style: TextStyle(fontWeight: FontWeight.w500),
            )
          ]),
        ),
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SitesPage()),
                    );
                  },
                  child: Container(
                      margin: const EdgeInsets.all(15),
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 5,
                              blurRadius: 2,
                              offset: const Offset(0, 6),
                            ),
                          ]),
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                      child: Stack(
                        children: [
                          Image.asset(
                            'images/png_sites_to_visit.jpg',
                            width: MediaQuery.of(context).size.width,
                            height: 150,
                            fit: BoxFit.fitWidth,
                          ),
                          const Center(
                              child: Text(
                            "SITES TO VISIT",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold),
                          ))
                        ],
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Hotels()),
                    );
                  },
                  child: Container(
                      margin: const EdgeInsets.all(15),
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 5,
                              blurRadius: 2,
                              offset: const Offset(0, 6),
                            ),
                          ]),
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                      alignment: Alignment.center,
                      child: Stack(
                        children: [
                          Image.asset(
                            'images/png_hotels.jpg',
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.fill,
                          ),
                          const Center(
                              child: Text(
                            "HOTELS",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold),
                          ))
                        ],
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Cafe()),
                    );
                  },
                  child: Container(
                      margin: const EdgeInsets.all(15),
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 5,
                              blurRadius: 2,
                              offset: const Offset(0, 6),
                            ),
                          ]),
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                      child: Stack(
                        children: [
                          Image.asset(
                            'images/png_foods.png',
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.fill,
                          ),
                          const Center(
                              child: Text(
                            "RESTAURANTS AND CAFE",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold),
                          ))
                        ],
                      )),
                ),
              ]),
        ));
  }
}
