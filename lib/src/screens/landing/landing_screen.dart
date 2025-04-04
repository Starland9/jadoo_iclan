import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jadoo_iclan/src/screens/landing/components/brands_section.dart';
import 'package:jadoo_iclan/src/screens/landing/components/category_section.dart';
import 'package:jadoo_iclan/src/screens/landing/components/destinations_section.dart';
import 'package:jadoo_iclan/src/screens/landing/components/easy_and_fast_section.dart';
import 'package:jadoo_iclan/src/screens/landing/components/head_section.dart';
import 'package:jadoo_iclan/src/screens/landing/components/testimonials_section.dart';
import 'package:jadoo_iclan/src/shared/widgets/landing_background.dart';
import 'package:jadoo_iclan/src/shared/widgets/navbar.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LandingBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 140.w, vertical: 47.h),
          children: const [
            Navbar(),
            HeadSection(),
            CategorySection(),
            DestinationsSection(),
            EasyAndFastSection(),
            TestimonialsSection(),
            BrandsSection(),
          ],
        ),
      ),
    );
  }
}
