import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jadoo_iclan/src/core/extensions/context_x.dart';

class TestimonialCard extends StatelessWidget {
  const TestimonialCard({
    super.key,
    required this.avatarPath,
    required this.text,
    required this.name,
    required this.location,
  });

  final String avatarPath;
  final String text;
  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          clipBehavior: Clip.none,
          padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 32.h),
          decoration: BoxDecoration(
            color: context.colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withValues(alpha: 0.1),
                spreadRadius: 1,
                blurRadius: 10,
                offset: const Offset(0, 10),
                blurStyle: BlurStyle.normal,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("“$text”", style: context.tt.bodyLarge),
              SizedBox(height: 32.h),
              Text(
                name,
                style: context.tt.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4.h),
              Text(location),
            ],
          ),
        ),
        Positioned(
          top: -40.h,
          left: -40.h,

          child: CircleAvatar(
            backgroundImage: AssetImage(avatarPath),
            radius: 68 / 2.5.w,
          ),
        ),
      ],
    );
  }
}
