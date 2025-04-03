import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jadoo_iclan/gen/assets.gen.dart';
import 'package:jadoo_iclan/src/core/extensions/context_x.dart';

class HeadSection extends StatelessWidget {
  const HeadSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Best Destinations around the world".toUpperCase(),
                style: context.tt.titleLarge?.copyWith(
                  color: context.colors.orange,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Travel, enjoy and live a and full life",
                style: GoogleFonts.volkhov().copyWith(
                  color: context.colors.darkBlue,
                  fontWeight: FontWeight.bold,
                  fontSize: 84.sp,
                  letterSpacing: -4,
                  height: 1,
                ),
              ),
            ],
          ),
        ),
        Expanded(child: Assets.images.topWoman.image(width: 765.w)),
      ],
    );
  }
}
