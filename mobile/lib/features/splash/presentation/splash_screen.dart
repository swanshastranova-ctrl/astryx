import 'package:flutter/material.dart';
import '../../../../core/constants/colors.dart';
import 'widgets/star_field.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AstryxColors.background,
      body: Stack(
        children: [
          // ⭐ Animated Stars
          const StarField(),

          // 🌌 Main Content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.auto_awesome,
                  color: Colors.white,
                  size: 90,
                ),

                SizedBox(height: 30),

                Text(
                  "ASTRYX",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 8,
                  ),
                ),

                SizedBox(height: 15),

                Text(
                  "Explore People.\nNot Profiles.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 18,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),

          // Version Number
          const Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                "Version 0.0.1",
                style: TextStyle(
                  color: Colors.white38,
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}