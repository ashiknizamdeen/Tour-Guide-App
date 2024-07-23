import 'package:flutter/material.dart';
import 'package:google_maps/about_penang.dart';
import 'package:google_maps/list__of_apps.dart';

import 'camera_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // int myIndex = 0;
  // List<Widget> widgetList = const [
  //   MainScreen(),
  //   Camera(),
  // ];
  // int index = 0;
  // final screens = [
  //   // const MainScreen(),
  //   const Camera(),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey.shade400,
        toolbarHeight: 90,
        title: Row(children: [
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
            "Your Penang Guide",
            style: TextStyle(fontWeight: FontWeight.w500),
          )
        ]),
      ),
      body: SingleChildScrollView(
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Aboutpenang()),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 20.0, top: 40.0),
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 5,
                            blurRadius: 1,
                            offset: const Offset(0, 6),
                          ),
                        ]),
                    width: 160,
                    height: 550,
                    child: Stack(
                      children: [
                        Image.asset(
                          'images/penng_flag.jpg',
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          fit: BoxFit.fitHeight,
                        ),
                        const Center(
                          child: Expanded(
                            child: FittedBox(
                              child: Text(
                                "About Penang",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ListofApps()),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(left: 30.0, top: 40.0),
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 5,
                        blurRadius: 1,
                        offset: const Offset(0, 6),
                      ),
                    ]),
                width: 160,
                height: 550,
                child: Stack(
                  children: [
                    Image.asset(
                      'images/apps_set.jpg',
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      fit: BoxFit.fitHeight,
                    ),
                    const Center(
                      child: Text(
                        "Apps to use ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const CameraScreen()));
          },
          backgroundColor: Colors.blueGrey,
          child: const Icon(Icons.camera_alt),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
      // screens[index],
      // bottomNavigationBar: BottomNavigationBar(
      //     type: BottomNavigationBarType.shifting,
      //     onTap: (index) {
      //       setState(() {
      //         myIndex = index;
      //       });
      //     },
      //     currentIndex: myIndex,
      //     items: const [
      //       BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.camera), label: 'Camera'),
      //     ])
      // NavigationBarTheme(
      //   data: const NavigationBarThemeData(
      //       indicatorColor: Color.fromARGB(255, 161, 169, 176),
      //       labelTextStyle: MaterialStatePropertyAll(
      //           TextStyle(fontSize: 14, fontWeight: FontWeight.w500))),
      //   child: NavigationBar(
      //       height: 70,
      //       backgroundColor: const Color(0xFFf1f5fb),
      //       selectedIndex: index,
      //       onDestinationSelected: (index) =>
      //           setState(() => this.index = index),
      //       destinations: const <Widget>[
      //         NavigationDestination(
      //           selectedIcon: Icon(Icons.home),
      //           icon: Icon(Icons.home_outlined),
      //           label: 'Home',
      //         ),
      //         NavigationDestination(
      //           icon: Badge(child: Icon(Icons.camera_alt_sharp)),
      //           label: 'Camera',
      //         )
      //       ]),
      // ),