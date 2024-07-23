import 'dart:io';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:google_maps/APis/translation.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';

import 'APis/recognition.dart';

class Camera extends StatefulWidget {
  final CameraDescription camera;
  const Camera({required this.camera, super.key});

  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  late CameraController cameraController;
  late Future<void> initCameraFn;
  String? shownText;

  @override
  void initState() {
    super.initState();
    cameraController = CameraController(
      widget.camera,
      ResolutionPreset.max,
    );
    initCameraFn = cameraController.initialize();
  }

  @override
  void dispose() {
    super.dispose();
    cameraController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        FutureBuilder(
            future: initCameraFn,
            builder: ((context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator.adaptive(),
                );
              }
              return SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                  child: CameraPreview(cameraController));
            })),
        Positioned(
          bottom: 50,
          child: FloatingActionButton(
            onPressed: () async {
              final image = await cameraController.takePicture();
              final recognizedText = await RecognitionApi.recognizeText(
                InputImage.fromFile(File(image.path)),
              );
              if (recognizedText == null) return;
              final translatedText =
                  await TranslationApi.translateText(recognizedText);
              setState(() {
                shownText = translatedText;
              });
            },
            child: const Icon(Icons.translate_rounded),
          ),
        ),
        if (shownText != null && shownText!.isNotEmpty)
          Align(
            alignment: Alignment.center,
            child: Container(
              color: Colors.blueGrey,
              child: Text(
                shownText!,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          )
      ],
    );
  }
}
