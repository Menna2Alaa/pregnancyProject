import 'package:flutter/material.dart';
import 'package:pregnancy_project/core/features/on_boarding/presentation/widgets/onboarding_view_body.dart';

class OnBoardingView extends StatelessWidget{
  const OnBoardingView({super.key});
  static const String routeName = "OnBoardingView";

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Color(0xFFFFF9F7),
      body: SafeArea(child: OnBoardingViewBody()));
  }
}