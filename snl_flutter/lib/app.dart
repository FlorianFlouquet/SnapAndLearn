import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:snl_flutter/presentation/ui/pages/camera_page.dart';
import 'package:snl_flutter/presentation/ui/pages/home_page.dart';
import 'package:snl_flutter/presentation/ui/pages/result_page.dart';

class SnapNLearnApp extends StatefulWidget {
  const SnapNLearnApp({super.key, required this.camera});

  final CameraDescription camera;

  @override
  State<SnapNLearnApp> createState() => _SnapNLearnAppState();
}

class _SnapNLearnAppState extends State<SnapNLearnApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Snap&Learn App',
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(93, 86, 147, 1.0),
        primaryColorDark: const Color.fromRGBO(71, 64, 121, 1.0),
        backgroundColor: const Color.fromRGBO(105, 98, 161, 1.0),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.white,
            fontSize: 35.0,
            fontWeight: FontWeight.w500,
          ),
          labelMedium: TextStyle(
            color: Color.fromRGBO(147, 139, 205, 1.0),
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
          ),
          bodyLarge: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
          bodyMedium: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
      ),
      routerConfig: GoRouter(
        routes: [
          GoRoute(
            path: "/",
            builder: (context, state) => const HomePage(),
            routes: [
              GoRoute(
                path: 'result',
                builder: ((context, state) => const ResultPage()),
              ),
              GoRoute(
                  path: 'camera',
                  builder: ((context, state) =>
                      CameraPage(camera: widget.camera))),
            ],
          ),
        ],
      ),
    );
  }
}
