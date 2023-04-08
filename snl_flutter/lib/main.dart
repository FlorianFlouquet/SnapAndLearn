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
        primarySwatch: Colors.purple,
      ),
      home: const SnapNLearnApp(),
    );
  }
}
