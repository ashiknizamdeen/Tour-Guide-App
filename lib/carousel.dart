import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Carousel extends StatelessWidget {
  Carousel({super.key});

  final websiteUri1 = Uri.parse(
      'https://play.google.com/store/apps/details?id=com.thecarousell.Carousell');

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
                Color.fromRGBO(194, 45, 15, 0.612),
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
                      'images/Carousel.png',
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
                        'Carousel',
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
                      'Carousell is a leading online marketplace in Southeast Asia, allowing users to buy and sell a wide range of new and second-hand items, including electronics, fashion, home goods, and more.\n\nProvides a platform for users to easily list and discover products.\n\nFeatures a simple and intuitive interface, making it easy for users to browse listings, search for specific items, and view detailed product information.\n\nSupports advanced search filters and personalized recommendations to enhance the shopping experience.\n\nAllows users to quickly list items for sale by uploading photos, adding descriptions, and setting prices.',
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
