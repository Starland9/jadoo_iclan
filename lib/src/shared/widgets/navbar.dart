import 'package:flutter/material.dart';
import 'package:jadoo_iclan/gen/assets.gen.dart';
import 'package:jadoo_iclan/src/core/extensions/context_x.dart';
import 'package:jadoo_iclan/src/shared/widgets/navlinks.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key, required this.scaffoldKey});

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Assets.images.svg.logo.svg(),
        Spacer(),

        if (context.isDesktopLayout)
          Expanded(flex: 3, child: Navlinks())
        else
          IconButton(
            onPressed: _openMenu,
            icon: Icon(Icons.menu, color: context.colors.black),
          ),
      ],
    );
  }

  void _openMenu() {
    scaffoldKey.currentState?.openEndDrawer();
  }
}
