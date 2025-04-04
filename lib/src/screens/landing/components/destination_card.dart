import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jadoo_iclan/src/core/extensions/context_x.dart';
import 'package:jadoo_iclan/src/shared/widgets/hover_builder.dart';

class DestinationCard extends StatelessWidget {
  const DestinationCard({
    super.key,
    required this.imagePath,
    required this.location,
    required this.daysTrip,
    required this.price,
  });

  final String imagePath;
  final String location;
  final int daysTrip;
  final double price;

  @override
  Widget build(BuildContext context) {
    return HoverBuilder(
      builder: (context, isHovered) {
        return AnimatedContainer(
          clipBehavior: Clip.hardEdge,
          height: 450.h,
          width: 314.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withValues(alpha: isHovered ? 0.6 : 0.3),
                spreadRadius: 1,
                blurRadius: 10,
                offset: const Offset(0, 10),
                blurStyle: BlurStyle.normal,
              ),
            ],
          ),
          duration: const Duration(milliseconds: 200),
          child: Column(
            children: [
              Expanded(
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                  width: double.maxFinite,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  spacing: 16.h,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          location,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                          ),
                        ),
                        Text(
                          "\$${price.toString()}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Transform.rotate(
                          angle: 0.8,
                          child: Icon(
                            Icons.navigation,
                            color: context.colors.darkBlue,
                            size: 18.sp,
                          ),
                        ),
                        SizedBox(width: 5.w),
                        Text("$daysTrip Days Trip"),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
