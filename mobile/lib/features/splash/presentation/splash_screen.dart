import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Icon(
              Icons.auto_awesome,
              size: 90,
            ),

            SizedBox(height: 30),

            Text(
              "ASTRYX",
              style: TextStyle(
                fontSize: 42,
                fontWeight: FontWeight.bold,
                letterSpacing: 8,
              ),
            ),

            SizedBox(height: 10),

            Text(
              "Every person deserves a universe.",
            ),
          ],
        ),
      ),
    );
  }
}