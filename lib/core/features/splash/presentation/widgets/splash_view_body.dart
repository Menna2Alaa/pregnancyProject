import 'package:flutter/material.dart';
import 'package:pregnancy_project/core/features/on_boarding/presentation/views/onboarding_view.dart';
import 'package:pregnancy_project/core/features/splash/presentation/widgets/splash_banding_and_title.dart';
import 'package:pregnancy_project/core/features/splash/presentation/widgets/splash_gradient_overlay.dart';
import 'package:pregnancy_project/core/utils/app_images.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    excuteNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      clipBehavior: Clip.none,
      children: [
        Image.asset(
          Assets.assetsImagesSplashViewAsset,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        SplashGradientOverlay(),
        SplashBandingAndTitle(),
      ],
    );
  }
  void excuteNavigation() {
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
      }
    });
  }
}



