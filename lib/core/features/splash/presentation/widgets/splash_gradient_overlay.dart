import 'package:flutter/material.dart';

class SplashGradientOverlay extends StatelessWidget{
  const SplashGradientOverlay({super.key});

  @override
  Widget build(BuildContext context) {
     return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.transparent, Colors.black26, Colors.black87],
          stops: [0.0, 0.5, 1.0],
        ),
      ),
    );
  }
}