import "package:flutter/material.dart";


class camera_screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Camera",
        style: TextStyle(
          fontSize: 20.0
        ),
      ),
    );
  }

}
///*import 'dart:async';
//import 'package:flutter/material.dart';
//import 'package:camera/camera.dart';
//
//List<CameraDescription> cameras;
//
//Future<void> main() async {
//  cameras = await availableCameras();
//  runApp(CameraApp());
//}
//
//class CameraApp extends StatefulWidget {
//  @override
//  _CameraAppState createState() => _CameraAppState();
//}
//
//class _CameraAppState extends State<CameraApp> {
//  CameraController controller;
//
//  @override
//  void initState() {
//    super.initState();
//    controller = CameraController(cameras[0], ResolutionPreset.medium);
//    controller.initialize().then((_) {
//      if (!mounted) {
//        return;
//      }
//      setState(() {});
//    });
//  }
//
//  @override
//  void dispose() {
//    controller?.dispose();
//    super.dispose();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    if (!controller.value.isInitialized) {
//      return Container();
//    }
//    return AspectRatio(
//        aspectRatio:
//        controller.value.aspectRatio,
//        child: CameraPreview(controller));
//  }
//}