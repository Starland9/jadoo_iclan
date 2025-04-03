import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jadoo_iclan/src/core/extensions/context_x.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.title,
    required this.body,
    required this.imagePath,
  });

  final String title;
  final String body;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    final isSvg = imagePath.endsWith(".svg");
    return Container(
      padding: EdgeInsets.all(30.h),
      margin: EdgeInsets.only(right: 20.w),
      height: 350.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (isSvg)
            Expanded(flex: 1, child: SvgPicture.asset(imagePath))
          else
            Image.asset(imagePath),
          Text(
            title,
            style: GoogleFonts.openSans(
              fontWeight: FontWeight.bold,
              fontSize: 20.sp,
              color: context.colors.darkBlue,
            ),
          ),
          SizedBox(height: 14.h),
          Expanded(
            child: Text(
              body,
              textAlign: TextAlign.center,
              style: context.tt.bodyMedium?.copyWith(
                color: context.colors.headerSubText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
