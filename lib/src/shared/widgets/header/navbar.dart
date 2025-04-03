import 'package:flutter/material.dart';
import 'package:jadoo_iclan/gen/assets.gen.dart';
import 'package:jadoo_iclan/src/shared/widgets/header/navlinks.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      
      children: [Assets.images.svg.logo.svg(), Navlinks()]);
  }
}
