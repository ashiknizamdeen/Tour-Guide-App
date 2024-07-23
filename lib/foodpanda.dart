import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FoodPanda extends StatelessWidget {
  FoodPanda({super.key});

  final websiteUri1 = Uri.parse(
      'https://play.google.com/store/apps/details?id=com.global.foodpanda.android');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color.fromRGBO(215, 15, 100, 100), Colors.white54])),
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
                      'images/Foodpanda icon.png',
                      width: 120,
                      height: 120,
                      fit: BoxFit.cover,
                    )),
                const SizedBox(width: 5),
                Column(
                  children: [
                    const Text(
                      'Foodpanda',
                      style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
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
                      'Experience popular local dishes such as Nasi Lemak and Satay, or venture into a diverse range of international cuisines.\n\nPeruse menus, submit orders, and monitor the progress of your delivery in real time.\n\nIndulge in exceptional offers and reductions on your preferred dining options.\n\nMake safe payments using cash, credit/debit cards, or e-wallets.\n\nHave your meals conveniently delivered to your residence, regardless of whether you are located in busy urban areas or tranquil islands.',
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
