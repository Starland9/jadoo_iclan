import 'package:flutter/material.dart';
import 'package:jadoo_iclan/gen/assets.gen.dart';
import 'package:jadoo_iclan/src/screens/landing/components/category_card.dart';
import 'package:jadoo_iclan/src/shared/widgets/sections_head.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<(String, String, String)> categories = [
      (
        Assets.images.svg.calculatedWeather.path,
        "Calculated Weather",
        "Built Wicket longer admire do barton vanity itself do in it.",
      ),
      (
        Assets.images.svg.bestFlights.path,
        "Best Flights",
        "Engrossed listening. Park gate sell they west hard for the.",
      ),
      (
        Assets.images.svg.localEvents.path,
        "Local Events",
        "Barton vanity itself do in it. Preferd to men it engrossed listening.",
      ),
      (
        Assets.images.svg.customization.path,
        "Customization",
        "We deliver outsourced aviation services for military customers",
      ),
    ];

    return Column(
      children: [
        SectionsHead(title: "CATEGORY", subtitle: "We Offer Best Services"),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            for (final category in categories)
              Flexible(
                child: CategoryCard(
                  imagePath: category.$1,
                  title: category.$2,
                  body: category.$3,
                ),
              ),
          ],
        ),
      ],
    );
  }
}
