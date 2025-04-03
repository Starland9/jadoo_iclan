import 'package:flutter/material.dart';
import 'package:jadoo_iclan/gen/assets.gen.dart';

class LandingBackground extends StatelessWidget {
  const LandingBackground({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Stack(
        children: [
          Positioned(top: 0, right: 0, child: Assets.images.svg.decore.svg()),
          child,
        ],
      ),
    );
  }
}
