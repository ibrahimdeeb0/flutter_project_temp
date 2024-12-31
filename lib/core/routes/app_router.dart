import 'package:flutter/material.dart';
import 'package:flutter_application_temp/features/auth/ui/auth_screen.dart';
import 'package:flutter_application_temp/features/auth/ui/widgets/reset_password/reset_password.dart';
import 'package:flutter_application_temp/features/splash_screen.dart/ui/splash_screen.dart';

import '../../features/introduction/app_introduction_screen.dart';
import '../../features/on_boarding/on_boarding_screen.dart';
import 'app_routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this argument to be passed in any screen like this
    final argument = settings.arguments;

    switch (settings.name) {
      case AppRoutes.appIntroductionScreen:
        return MaterialPageRoute(
          builder: (_) => const AppIntroductionScreen(),
        );

      case AppRoutes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );

      case AppRoutes.auth:
        return MaterialPageRoute(
          builder: (_) => AuthScreen(
            arguments: argument as Map<String, dynamic>,
          ),
        );

      case AppRoutes.resetPassword:
        return MaterialPageRoute(
          builder: (_) => const ResetPassword(),
        );

      case AppRoutes.splash:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );

      default:
        return null;
    }
  }
}
