// camera_screen.dart
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'camera.dart';

class CameraScreen extends StatelessWidget {
  const CameraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Photo Translate',
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
        body: FutureBuilder<List<CameraDescription>>(
          future: availableCameras(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            }
            if (snapshot.hasError || !snapshot.hasData) {
              return const Center(
                child: Text('Error'),
              );
            }
            final cameras = snapshot.data!.first;
            return Camera(camera: cameras);
          },
        ),
      ),
    );
  }
}
