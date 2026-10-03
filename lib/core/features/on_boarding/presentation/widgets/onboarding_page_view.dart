import 'package:flutter/material.dart';
import 'package:pregnancy_project/core/app_theming/app_text_styles.dart';
import 'package:pregnancy_project/core/features/on_boarding/presentation/widgets/card.dart';
import 'package:pregnancy_project/core/features/on_boarding/presentation/widgets/page_view_item.dart';
import 'package:pregnancy_project/core/utils/app_images.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({super.key, required this.pageController});
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          isVisible:
              (pageController.hasClients ? pageController.page!.round() : 0) ==
              0,
          image: Assets.assetsImagesOnboarding1,
          subTitle:
              'تابعي تطور ونمو جنينكِ بحسابات طبية دقيقة وتوجيهات صحية مخصصة لمرحلة حملكِ.',
          title: Text(
            "رحلة مطمئنة أسبوعاً بأسبوع",
            style: AppTextStyles.bold19.copyWith(color: Color(0xFF0E8A78)),
          ),
        ),

        PageViewItem(
          isVisible:
              (pageController.hasClients ? pageController.page!.round() : 0) !=
              0,
          image: Assets.assetsImagesOnboarding3,
          card: CardDetails(
            leadingIcon: Icons.favorite,
            title: "10 ركلات / ساعتين",
            subtitle: "معدل نشاط طبيعي ومطمئن",
            trailingTitle: "مطمئن",
          ),
          subTitle:
              'سجّلي ركلات الجنين بدقة مع تنبيهات ذكية تستشعر أي تغير وتمنحكِ راحة البال طوال اليوم.',
          title: Text(
            "اطمئنان دائم على حركة طفلكِ",
            style: AppTextStyles.bold19.copyWith(color: Color(0xFF0E8A78)),
          ),
        ),

        PageViewItem(
          isVisible:
              (pageController.hasClients ? pageController.page!.round() : 0) ==
              0,
              card: CardDetails(title: "رمز الاستجابة السريع الطبي المشفر", subtitle: "بيانات الطوارئ والملف السريري", leadingIcon: Icons.qr_code, ),
          image: Assets.assetsImagesOnboarding2,
          subTitle:
              'رمز استجابة سريع (QR) مشفر يتيح للأطباء وفِرق الطوارئ الوصول لبياناتكِ المنقذة في لحظات دون أوراق.',
          title: Text(
            "ملفكِ الطبي معكِ في أي طارئ",
            style: AppTextStyles.bold19.copyWith(color: Color(0xFF0E8A78)),
          ),
        ),
      ],
    );
  }
}
