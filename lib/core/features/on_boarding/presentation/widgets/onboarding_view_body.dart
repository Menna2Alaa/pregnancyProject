import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pregnancy_project/core/constants.dart';
import 'package:pregnancy_project/core/extensions/custome_sizedbox.dart';
import 'package:pregnancy_project/core/features/on_boarding/presentation/widgets/onboarding_page_view.dart';
import 'package:pregnancy_project/core/widgets/custome_button.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  var currentPage = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnboardingPageView(pageController: pageController)),
        DotsIndicator(
          dotsCount: 3,
          decorator: DotsDecorator(
            activeColor: const Color(0xFF0E8A78),
            colors: List.generate(
              3,
              (index) => index <= currentPage
                  ? const Color(0xFF0E8A78)
                  : const Color(0xFF0E8A78).withValues(alpha: 0.5),
            ),
          ),
        ),
        26.h.boxH,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding.h),
          child: Visibility(
            visible: currentPage == 2 ? true : false,
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            child: CustomeButton(
              icon: Icons.arrow_circle_left_outlined,
              text: "ابدئي رحلتكِ مع سند",
              width: double.infinity,
            ),
          ),
        ),
        30.h.boxH,
      ],
    );
  }
}
