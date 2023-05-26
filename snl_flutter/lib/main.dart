import 'package:flutter/material.dart';
import 'package:snl_flutter/app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snap&Learn App',
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(93, 86, 147, 1.0),
        primaryColorDark: const Color.fromRGBO(71, 64, 121, 1.0),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.white,
            fontSize: 35.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      home: const SnapNLearnApp(),
    );
  }
}
