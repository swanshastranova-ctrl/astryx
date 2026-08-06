import 'package:flutter/material.dart';
import '../features/splash/presentation/splash_screen.dart';
import 'theme.dart';

class AstryxApp extends StatelessWidget {
  const AstryxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Astryx',
      debugShowCheckedModeBanner: false,
      theme: AstryxTheme.darkTheme,
      home: const SplashScreen(),
    );
  }
}