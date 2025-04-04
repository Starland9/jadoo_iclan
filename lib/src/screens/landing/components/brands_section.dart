import 'package:flutter/material.dart';
import 'package:jadoo_iclan/gen/assets.gen.dart';

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

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [for (var brand in brands) Image.asset(brand["imagePath"])],
    );
  }
}
