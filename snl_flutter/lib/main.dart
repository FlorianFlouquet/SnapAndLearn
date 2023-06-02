import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:snl_flutter/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final cameras = await availableCameras();

  final camera = cameras.first;

  runApp(MyApp(camera: camera));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key, required this.camera});

  final CameraDescription camera;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SnapNLearnApp(
      camera: widget.camera,
    );
  }
}
