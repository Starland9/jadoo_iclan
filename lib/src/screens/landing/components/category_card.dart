import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jadoo_iclan/gen/assets.gen.dart';
import 'package:jadoo_iclan/src/core/extensions/context_x.dart';
import 'package:jadoo_iclan/src/shared/widgets/hover_builder.dart';

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
    return HoverBuilder(
      builder: (context, isHovered) {
        return Stack(
          clipBehavior: Clip.none,
          children: [
            if (isHovered)
              Positioned(
                bottom: -10,
                left: -20,
                child: Assets.images.svg.categoryHoverRed.svg(
                  width: 100.w,
                  height: 100.h,
                ),
              ),
            AnimatedContainer(
              duration: Duration(milliseconds: 200),
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              margin: EdgeInsets.all(20.sp),
              height: 250.h,
              width: 300.w,
              decoration: BoxDecoration(
                color: isHovered ? context.colors.white : null,
                borderRadius: BorderRadius.circular(20.r),
                boxShadow: [
                  BoxShadow(
                    color: context.colors.darkBlue.withValues(
                      alpha: isHovered ? 0.1 : 0.0,
                    ),
                    blurRadius: isHovered ? 20.r : 0,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (isSvg)
                    Expanded(flex: 1, child: SvgPicture.asset(imagePath))
                  else
                    Expanded(child: Image.asset(imagePath)),
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
            ),
          ],
        );
      },
    );
  }
}
