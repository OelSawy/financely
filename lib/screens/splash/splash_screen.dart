import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color:Theme.of(context).colorScheme.primary,
        child: const Text("Splash Screen"),
      ),
    );
  }
}
