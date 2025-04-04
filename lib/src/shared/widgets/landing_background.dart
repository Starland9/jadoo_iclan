import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jadoo_iclan/gen/assets.gen.dart';
import 'package:jadoo_iclan/src/core/extensions/context_x.dart';

class LandingBackground extends StatelessWidget {
  const LandingBackground({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: Assets.images.svg.decore.svg(
              height: context.isDesktopLayout ? 700.h : 500.h,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Opacity(
              opacity: 0.2,
              child: Assets.images.svg.bottomGradien.svg(),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
