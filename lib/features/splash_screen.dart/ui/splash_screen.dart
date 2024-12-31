import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_application_temp/core/theme/app_colors.dart';
import 'package:flutter_application_temp/core/theme/assets_manager.dart';
import 'package:flutter_application_temp/features/introduction/app_introduction_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const AppIntroductionScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBrown,
      body: Center(
        child: Image.asset(AssetsManager.loginAndRegisterLogoImg),
      ),
    );
  }
}
