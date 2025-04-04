import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jadoo_iclan/gen/assets.gen.dart';
import 'package:jadoo_iclan/src/core/extensions/context_x.dart';

class BrandsSection extends StatelessWidget {
  const BrandsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> brands = [
      {"imagePath": Assets.images.brands.axon.path},
      {"imagePath": Assets.images.brands.jetStar.path},
      {"imagePath": Assets.images.brands.expedia.path},
      {"imagePath": Assets.images.brands.qantas.path},
      {"imagePath": Assets.images.brands.alitalia.path},
    ];

    if (context.isDesktopLayout) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [for (var brand in brands) Image.asset(brand["imagePath"])],
      );
    }

    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 30.w,
      runSpacing: 30.h,
      runAlignment: WrapAlignment.center,
      verticalDirection: VerticalDirection.down,
      children: [
        for (var brand in brands)
          Image.asset(brand["imagePath"], height: 100.w, width: 100.w),
      ],
    );
  }
}
