import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class EscapePenang extends StatelessWidget {
  EscapePenang({super.key});

  final websiteUri1 = Uri.parse(
      'https://www.google.com.my/maps/place/ESCAPE+Penang,+828,+Jalan+Teluk+Bahang,+Teluk+Bahang,+11050+Tanjung+Bungah,+Penang/@5.4497405,100.214038,17z/data=!4m6!3m5!1s0x304ac3a45d25df75:0xe55b46784fbcb260!8m2!3d5.4497405!4d100.214038!16s%2Fg%2F1w3sx3lr?hl=enhttps%3A%2F%2Fwww.google.com.my%2Fmaps%2Fplace%2FNational%20Autism%20Society%20of%20Malaysia%20(NASOM)%2F%404.433391%2C114.005004%2C17z%2Fdata%3D!4m2!3m1!1s0x321f4eff6e30e333%3A0xfe975aba0ac338a0%3Fhl%3Den');

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
                    'images/escape_penang.jpg',
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
                          'Escape Penang',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        Row(
                          children: [
                            IconButton(
                                onPressed: () => {
                                      launchUrl(websiteUri1,
                                          mode: LaunchMode.externalApplication)
                                    },
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
                            'Offers a wide range of outdoor activities and attractions designed for all ages, promoting fun, physical fitness, and environmental awareness.\n\nFeatures various adventure courses such as zip-lining, rope courses, rock climbing, and obstacle courses.\n\nIncludes unique attractions like the worlds longest tube water slide and Malaysias longest zip coaster.\n\nHome to an extensive water park with attractions such as wave pools, water slides, and a lazy river.',
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
