import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jadoo_iclan/gen/assets.gen.dart';
import 'package:jadoo_iclan/src/core/extensions/context_x.dart';

class HeadSection extends StatelessWidget {
  const HeadSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: context.flexAxis,
      children: [
        if (context.isDesktopLayout)
          Expanded(child: _buildTextsAndButtons(context))
        else
          Padding(
            padding: EdgeInsets.only(top: 32.h),
            child: _buildTextsAndButtons(context),
          ),
        if (context.isDesktopLayout)
          Expanded(child: Assets.images.topWoman.image()),
      ],
    );
  }

  Widget _buildTextsAndButtons(BuildContext context) {
    return Column(
      spacing: 20.h,
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
        Text(
          "Travel, enjoy and live a new and full life",
          style: GoogleFonts.volkhov().copyWith(
            color: context.colors.darkBlue,
            fontWeight: FontWeight.bold,
            fontSize: 84.sp,
            letterSpacing: -4,
            height: 1,
          ),
        ),
        Text(
          "Built Wicket longer admire do barton vanity itself do in it.Preferred to sportsmen it engrossed listening. Park gate sell they west hard for the.",
          style: TextStyle(color: context.colors.headerSubText),
        ),
        Row(
          children: [
            Flexible(
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Find out more"),
              ),
            ),
            if (!context.isMobileLayout) Spacer(),
            SizedBox(width: 16.w),
            _buildPlayDemo(context),
          ],
        ),
      ],
    );
  }

  InkWell _buildPlayDemo(BuildContext context) {
    return InkWell(
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(12.w),
            decoration: BoxDecoration(
              color: context.colors.orange,
              boxShadow: [
                BoxShadow(
                  color: context.colors.orange.withValues(alpha: 0.5),
                  blurRadius: 10,
                  spreadRadius: 0,
                ),
              ],
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.play_arrow, color: Colors.white),
          ),
          Text("  Play Demo"),
        ],
      ),
    );
  }
}
