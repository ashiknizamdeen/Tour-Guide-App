import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Shopee extends StatelessWidget {
  Shopee({super.key});

  final websiteUri1 =
      Uri.parse('https://play.google.com/store/apps/details?id=com.shopee.my');

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
                Color.fromRGBO(190, 98, 13, 0.612),
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
                      'images/shopee-icon.png',
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
                        'Shopee',
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
                      'Offers a seamless online shopping experience with a diverse selection of products from various categories.\n\nFeatures an intuitive and easy-to-use interface, allowing users to browse products, search for specific items, and access detailed product information effortlessly.\n\nAdvanced filtering options and personalized recommendations enhance the shopping experience.\n\nRegular sales events, flash deals, and daily discounts attract shoppers with competitive prices.\n\nProvides vouchers, coupons, and Shopee Coins for additional savings and rewards.',
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
