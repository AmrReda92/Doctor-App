import 'package:doctor_app_advanced/core/routing/routes.dart';
import 'package:doctor_app_advanced/feauters/auth/register/ui/register_screen.dart';
import 'package:flutter/material.dart';

import '../../feauters/auth/login/ui/login_screen.dart';
import '../../feauters/onboarding/ui/onboarding_screen.dart';

class AppRoutes {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.registerScreen:
         return MaterialPageRoute(builder: (_) => const RegisterScreen());
      default :
        return null;
    }
  }
}
