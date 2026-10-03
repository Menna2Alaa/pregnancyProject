import 'package:flutter/material.dart';
import 'package:pregnancy_project/core/features/auth/sign_in/presentation/views/sign_in_view.dart';
import 'package:pregnancy_project/core/features/on_boarding/presentation/views/onboarding_view.dart';
import 'package:pregnancy_project/core/features/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (_) => const SplashView());
    
     case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (_) => const OnBoardingView());
      
    case SignInView.routeName:
      return MaterialPageRoute(builder: (_) => const SignInView());

    default:
      return MaterialPageRoute(builder: (_) => const Scaffold());
  }
}
