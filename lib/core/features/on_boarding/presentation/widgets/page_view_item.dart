import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pregnancy_project/core/app_theming/app_text_styles.dart';
import 'package:pregnancy_project/core/constants.dart';
import 'package:pregnancy_project/core/extensions/custome_sizedbox.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.subTitle,
    required this.title,
    required this.isVisible,
    this.card,
  });
  final String image, subTitle;
  final Widget title;
  final bool isVisible;
  final Widget? card;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: GestureDetector(
              onTap: () {},
              child: Visibility(
                visible: isVisible,
                child: Text(
                  "تخطي",
                  style: AppTextStyles.bold13.copyWith(
                    color: Color(0xFF0E8A78),
                  ),
                ),
              ),
            ),
          ),
          160.h.boxH,
          Stack(
            clipBehavior: Clip.none,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20.r),
                child: Image.asset(
                  image,
                  width: 300.w,
                  height: 300.h,
                  fit: BoxFit.cover,
                ),
              ),
              if (card != null)
                Positioned(
                  bottom: 5.h,
                  left: 0,
                  right: 0,
                  child: Center(child: card!),
                ),
            ],
          ),
          20.box,
          Align(alignment: Alignment.center, child: title),
          10.box,
          Text(
            subTitle,
            style: AppTextStyles.regular13.copyWith(color: Color(0xFFE9A0B4)),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
