import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_maps/neoplus_hotel.dart';
import 'package:google_maps/sentralhotel.dart';
import 'package:google_maps/straits_quay.dart';
import 'bayview_hotel.dart';
import 'escape_penang.dart';

class Hotels extends StatelessWidget {
  const Hotels({super.key});

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
            "Hotels",
            style: TextStyle(fontWeight: FontWeight.w500),
          )
        ]),
      ),
      body: SingleChildScrollView(
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const HotelBayview()));
            },
            child: Container(
                margin: const EdgeInsets.all(20),
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white,
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
                child: Row(
                  children: [
                    Image.asset(
                      'images/bayview_hotel_georgetown.jpg',
                      width: MediaQuery.of(context).size.width / 3,
                      height: MediaQuery.of(context).size.height,
                      fit: BoxFit.cover,
                    ),
                    const Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Bayview Hotel Georgetown",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_pin,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "Georgetown, Penang",
                                  style: TextStyle(fontSize: 10.0),
                                )
                              ],
                            ),
                            SizedBox(height: 20),
                            Text("Click for more...")
                          ],
                        ))
                  ],
                )),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const HotelNeoplus()));
            },
            child: Container(
                margin: const EdgeInsets.all(20),
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white,
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
                child: Row(
                  children: [
                    Image.asset(
                      'images/hotel_neo+.jpg',
                      width: MediaQuery.of(context).size.width / 3,
                      height: MediaQuery.of(context).size.height,
                      fit: BoxFit.cover,
                    ),
                    const Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hotel Neo+ Penang",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_pin,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "Jalan Gurdwara, GeorgeTown",
                                  style: TextStyle(fontSize: 10.0),
                                  maxLines: 1,
                                  overflow: TextOverflow.clip,
                                )
                              ],
                            ),
                            SizedBox(height: 20),
                            Text("Click for more...")
                          ],
                        ))
                  ],
                )),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const HotelSentral()));
            },
            child: Container(
                margin: const EdgeInsets.all(20),
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white,
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
                child: Row(
                  children: [
                    Image.asset(
                      'images/hotel_sentral_seaview.jpeg',
                      width: MediaQuery.of(context).size.width / 3,
                      height: MediaQuery.of(context).size.height,
                      fit: BoxFit.cover,
                    ),
                    const Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hotel Sentral Seaview",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_pin,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "Tanjung Tokong, Pulau Pinang",
                                  style: TextStyle(fontSize: 10.0),
                                )
                              ],
                            ),
                            SizedBox(height: 20),
                            Text("Click for more...")
                          ],
                        ))
                  ],
                )),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EscapePenang()));
            },
            child: Container(
                margin: const EdgeInsets.all(20),
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white,
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
                child: Row(
                  children: [
                    Image.asset(
                      'images/escape_penang.jpg',
                      width: MediaQuery.of(context).size.width / 3,
                      height: MediaQuery.of(context).size.height,
                      fit: BoxFit.cover,
                    ),
                    const Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Escape Penang",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_pin,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "Theme Park",
                                  style: TextStyle(fontSize: 12.0),
                                )
                              ],
                            ),
                            SizedBox(height: 20),
                            Text("Click for more...")
                          ],
                        ))
                  ],
                )),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const StraitsQuay()));
            },
            child: Container(
                margin: const EdgeInsets.all(20),
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white,
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
                child: Row(
                  children: [
                    Image.asset(
                      'images/Straits_Quay.jpg',
                      width: MediaQuery.of(context).size.width / 3,
                      height: MediaQuery.of(context).size.height,
                      fit: BoxFit.cover,
                    ),
                    const Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Straits Quay",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_pin,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "Tanjung Bungah, Penang",
                                  style: TextStyle(fontSize: 12.0),
                                )
                              ],
                            ),
                            SizedBox(height: 20),
                            Text("Click for more...")
                          ],
                        ))
                  ],
                )),
          )
        ]),
      ),
    );
  }
}
