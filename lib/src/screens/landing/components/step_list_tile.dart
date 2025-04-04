import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jadoo_iclan/src/core/extensions/context_x.dart';

class StepListTile extends StatelessWidget {
  const StepListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.iconPath,
  });

  final String title;
  final String subtitle;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.zero,
      child: Row(
        children: [
          SvgPicture.asset(iconPath, width: 50.h, height: 50.h),
          SizedBox(width: 16.w), // Add spacing between icon and text
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: context.tt.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(subtitle, style: context.tt.bodyLarge),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
