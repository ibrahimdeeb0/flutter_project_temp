import 'package:flutter/material.dart';
import 'package:flutter_application_temp/core/helpers/extensions.dart';
import 'package:flutter_application_temp/core/routes/app_routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'package:flutter_application_temp/core/theme/app_colors.dart';
import 'package:flutter_application_temp/core/theme/assets_manager.dart';

class IntroInfoModel {
  final String title;
  final String body;
  final Widget image;
  final PageDecoration decoration;

  IntroInfoModel({
    required this.title,
    required this.body,
    required this.image,
    required this.decoration,
  });
}

class AppIntroductionScreen extends StatefulWidget {
  const AppIntroductionScreen({super.key});

  @override
  State<AppIntroductionScreen> createState() => _AppIntroductionScreenState();
}

class _AppIntroductionScreenState extends State<AppIntroductionScreen> {
  final PageDecoration tempDecoration = const PageDecoration(
    titleTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    bodyTextStyle: TextStyle(fontSize: 16),
    pageColor: Colors.white,
    bodyAlignment: Alignment.center,
    imagePadding: EdgeInsets.only(
      top: 200,
    ),
  );

  @override
  Widget build(BuildContext context) {
    void onDone() async {
      // Map<String, dynamic> storedData = {
      //   'is_stored': true,
      // };
      context.pushReplacementNamed(AppRoutes.onBoardingScreen);
    }

    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Welcome to the App",
          body: "This is an amazing app to help you achieve your goals.",
          image: Center(
            child: Image.asset(AssetsManager.into1Img, height: 240.h),
          ),
          decoration: tempDecoration,
        ),
        PageViewModel(
          title: 'Title...',
          body: 'Some application data.',
          image: Center(
            child: Image.asset(AssetsManager.into2Img, height: 240.h),
          ),
          decoration: tempDecoration,
        ),
        PageViewModel(
          title: 'Title...',
          body: 'Some application data.',
          image: Center(
            child: Image.asset(
              AssetsManager.into3Img,
              height: 240.h,
            ),
          ),
          decoration: tempDecoration,
        ),
        PageViewModel(
          title: 'Title...',
          body: 'Some application data.',
          image: Center(
            child: Image.asset(AssetsManager.into4Img, height: 240.h),
          ),
          decoration: tempDecoration,
        ),
        PageViewModel(
          title: "Get Started",
          body: "Join us today!",
          image: Center(
            child: Image.asset(AssetsManager.into5Img, height: 240.h),
          ),
          decoration: tempDecoration,
        ),
      ],
      onDone: onDone,
      onSkip: onDone,
      showSkipButton: true,
      skip: const Text('Skip', style: TextStyle(color: AppColors.mainBlue)),
      next: Icon(Icons.arrow_forward, size: 26.sp, color: AppColors.mainBlue),
      done: Text('Next',
          style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold)),
      dotsDecorator: DotsDecorator(
        size: const Size(10.0, 10.0),
        color: Colors.grey,
        activeSize: const Size(22.0, 10.0),
        activeColor: Colors.blue,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0.r),
        ),
      ),
      dotsContainerDecorator: const BoxDecoration(
        color: Colors.white,
      ),
    );
  }
}
