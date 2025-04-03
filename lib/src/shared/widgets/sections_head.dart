import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jadoo_iclan/src/core/extensions/context_x.dart';

class SectionsHead extends StatelessWidget {
  const SectionsHead({super.key, required this.title, required this.subtitle});

  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.sp,
            color: context.colors.headerSubText,
          ),
        ),
        Text(
          subtitle,
          style: GoogleFonts.volkhov(
            fontWeight: FontWeight.bold,
            fontSize: 50.sp,
            color: context.colors.darkBlue,
          ),
        ),
      ],
    );
  }
}
