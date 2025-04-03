import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jadoo_iclan/gen/assets.gen.dart';
import 'package:jadoo_iclan/src/screens/landing/components/destination_card.dart';
import 'package:jadoo_iclan/src/shared/widgets/sections_head.dart';

class DestinationsSection extends StatelessWidget {
  const DestinationsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> destinations = [
      {
        "imagePath": Assets.images.destinations.romeItaly.path,
        "location": "Rome, Italy",
        "daysTrip": 10,
        "price": 5420.0,
      },
      {
        "imagePath": Assets.images.destinations.londonUk.path,
        "location": "London, UK",
        "daysTrip": 12,
        "price": 4200.0,
      },
      {
        "imagePath": Assets.images.destinations.fullEurope.path,
        "location": "Full Europe",
        "daysTrip": 28,
        "price": 15000.0,
      },
    ];

    return Column(
      children: [
        SectionsHead(title: "Top Selling", subtitle: "Top Destinations"),
        SizedBox(height: 50.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            for (var destination in destinations)
              Flexible(
                child: DestinationCard(
                  imagePath: destination["imagePath"],
                  location: destination["location"],
                  daysTrip: destination["daysTrip"],
                  price: destination["price"],
                ),
              ),
          ],
        ),
      ],
    );
  }
}
