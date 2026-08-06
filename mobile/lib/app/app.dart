import 'package:flutter/material.dart';

import '../features/splash/presentation/splash_screen.dart';
import 'theme.dart';

class AstryxApp extends StatelessWidget {
  const AstryxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Astryx',
      theme: AstryxTheme.dark,
      home: const SplashScreen(),
    );
  }
}