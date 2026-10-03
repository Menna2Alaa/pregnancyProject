import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashBandingAndTitle extends StatelessWidget {
  const SplashBandingAndTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'سند',
          style: GoogleFonts.alata(
            fontSize: 60,
            height: 1.0,
            fontWeight: FontWeight.w700,
            color: Colors.white,
            shadows: const [Shadow(blurRadius: 16, color: Colors.black45)],
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(width: 28, height: 1, color: Colors.white54),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Icon(
                Icons.favorite,
                size: 14,
                color: Color(0xFFF2B8C6),
              ),
            ),
            Container(width: 28, height: 1, color: Colors.white54),
          ],
        ),
        const SizedBox(height: 12),
        Text(
          'رفيقتكِ في رحلة الحمل',
          style: GoogleFonts.cairo(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.white.withValues(alpha: 0.9),
          ),
        ),
      ],
    );
  }
}