import 'package:flutter/material.dart';

class HoverBuilder extends StatelessWidget {
  final Widget Function(BuildContext context, bool isHovered) builder;
  HoverBuilder({super.key, required this.builder});

  final ValueNotifier<bool> isHovered = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => isHovered.value = true,
      onExit: (_) => isHovered.value = false,
      child: ValueListenableBuilder<bool>(
        valueListenable: isHovered,
        builder: (context, hovered, child) {
          return builder(context, hovered);
        },
      ),
    );
  }
}
