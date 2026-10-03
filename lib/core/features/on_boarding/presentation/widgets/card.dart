import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pregnancy_project/core/app_theming/app_text_styles.dart';
import 'package:pregnancy_project/core/extensions/custome_sizedbox.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({
    super.key,
    required this.title,
    required this.subtitle,
    required this.leadingIcon,
    this.trailingTitle,
  });
  final String title, subtitle;
  final IconData leadingIcon;
  final String? trailingTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280.w,
      height: 70.h,
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 30.w,
            height: 30.h,
            decoration: BoxDecoration(
              color: const Color(0xFF0E8A78).withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Center(
              child: Icon(
                leadingIcon,
                color: const Color(0xFF0E8A78),
                size: 15.sp,
              ),
            ),
          ),
          12.w.boxW,
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyles.bold13.copyWith(
                    color: const Color(0xFF0E8A78),
                  ),
                ),
                Text(
                  subtitle,
                  style: AppTextStyles.regular11.copyWith(color: Colors.grey),
                ),
              ],
            ),
          ),
          if (trailingTitle != null && trailingTitle!.isNotEmpty)
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
            decoration: BoxDecoration(
              color: const Color(0xFF0E8A78).withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Text(
              trailingTitle !,
              style: AppTextStyles.regular11.copyWith(
                color: const Color(0xFF0E8A78),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
