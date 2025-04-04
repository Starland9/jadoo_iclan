import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jadoo_iclan/gen/assets.gen.dart';
import 'package:jadoo_iclan/src/screens/landing/components/step_list_tile.dart';
import 'package:jadoo_iclan/src/shared/widgets/sections_head.dart';

class EasyAndFastSection extends StatelessWidget {
  const EasyAndFastSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> steps = [
      {
        "title": "Choose Destination",
        "iconPath": Assets.images.svg.chooseDestination.path,
        "subtitle":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Urna, tortor tempus.",
      },
      {
        "title": "Make Payment",
        "iconPath": Assets.images.svg.makePayment.path,
        "subtitle":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Urna, tortor tempus.",
      },
      {
        "title": "Reach Airport on Selected Date",
        "iconPath": Assets.images.svg.reachAirport.path,
        "subtitle":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Urna, tortor tempus.",
      },
    ];

    return Row(
      children: [
        Expanded(
          child: Column(
            spacing: 32.h,
            children: [
              SectionsHead(
                title: "Easy and Fast",
                subtitle: "Book your next trip in 3 easy steps",
                centered: false,
                titleFontFamily: GoogleFonts.poppins().fontFamily,
              ),
              for (final step in steps)
                StepListTile(
                  title: step["title"],
                  subtitle: step["subtitle"],
                  iconPath: step["iconPath"],
                ),
            ],
          ),
        ),
        Expanded(child: Assets.images.tripToGreece.image()),
      ],
    );
  }
}
