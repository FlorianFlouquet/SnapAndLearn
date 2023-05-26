import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Timer _timer;
  bool selected = false;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(
      const Duration(milliseconds: 1200),
      (timer) {
        setState(() {
          selected = !selected;
        });
      },
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    const String cameraIcon = 'assets/images/camera_icon.svg';
    final Widget svgIcon = SvgPicture.asset(
      cameraIcon,
      semanticsLabel: 'Camera logo',
    );

    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Theme.of(context).primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(40),
              child: Text(
                'Click to open camera'.toUpperCase(),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            AnimatedContainer(
              curve: Curves.ease,
              duration: const Duration(milliseconds: 1200),
              padding: const EdgeInsets.all(40),
              decoration: BoxDecoration(
                color: selected
                    ? const Color.fromRGBO(71, 64, 121, 1.0)
                    : const Color.fromRGBO(71, 64, 121, 0.5),
                shape: BoxShape.circle,
              ),
              child: Container(
                margin: const EdgeInsets.all(10),
                child: svgIcon,
              ),
            )
          ],
        ),
      ),
    );
  }
}
