import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Waze extends StatelessWidget {
  Waze({super.key});

  final websiteUri1 =
      Uri.parse('https://play.google.com/store/apps/details?id=com.waze');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Color.fromRGBO(29, 128, 204, 0.612),
                Colors.white54
              ])),
        ),
        toolbarHeight: 100,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                    margin: const EdgeInsets.only(left: 20),
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
                    width: 120,
                    height: 120,
                    child: Image.asset(
                      'images/Waze-icon.jpg',
                      width: 120,
                      height: 120,
                      fit: BoxFit.cover,
                    )),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Waze',
                        style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                            onPressed: () => {
                                  launchUrl(websiteUri1,
                                      mode: LaunchMode.externalApplication)
                                },
                            icon: Image.asset(
                              'images/google-play-icon.jpg', // Replace with the path to your image asset
                              width: 30,
                              height: 30,
                            )),
                        const Text(
                          'Download Now',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              height: 700,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0)),
                color: Color.fromARGB(255, 243, 226, 223),
              ),
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.topLeft,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Waze is a community-driven navigation app that provides real-time traffic updates, route planning, and turn-by-turn directions.\n\nHelps users navigate through traffic efficiently by providing the fastest routes based on current road conditions.\n\nUsers receive live updates on traffic jams, accidents, road closures, and other hazards reported by the Waze community.\n\nOffers alternative routes to avoid delays and ensure a smoother driving experience.\n\nEncourages users to report traffic incidents, road hazards, and other issues to help improve the apps accuracy and usefulness.',
                      style: TextStyle(fontSize: 15.0),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
