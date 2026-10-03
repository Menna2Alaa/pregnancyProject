import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pregnancy_project/core/extensions/custome_sizedbox.dart';

class CustomeButton extends StatelessWidget {
  const CustomeButton({
    super.key,
    required this.text,
    required this.width,
    this.onPressed,
    this.icon,
  });
  final String text;
  final double width;
  final void Function()? onPressed;
  final IconData? icon;
  //final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 50,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Color(0xFF0E8A78),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            6.w.boxW,
            Icon(icon, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
