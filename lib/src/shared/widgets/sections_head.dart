import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jadoo_iclan/src/core/extensions/context_x.dart';
import 'package:jadoo_iclan/src/core/extensions/strings_x.dart';

class SectionsHead extends StatelessWidget {
  const SectionsHead({
    super.key,
    required this.title,
    required this.subtitle,
    this.centered = true,
    this.titleFontFamily,
  });

  final String title;
  final String subtitle;
  final bool centered;
  final String? titleFontFamily;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          centered ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.sp,
            color: context.colors.headerSubText,
            fontFamily: titleFontFamily,
          ),
        ),
        Text(
          subtitle.onesCaps,
          textAlign: centered ? TextAlign.center : TextAlign.start,
          style: GoogleFonts.volkhov(
            fontWeight: FontWeight.bold,
            fontSize: 40.sp,
            color: context.colors.darkBlue,
          ),
        ),
      ],
    );
  }
}
