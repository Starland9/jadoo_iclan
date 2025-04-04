import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jadoo_iclan/src/core/extensions/context_x.dart';
import 'package:jadoo_iclan/src/screens/landing/components/brands_section.dart';
import 'package:jadoo_iclan/src/screens/landing/components/category_section.dart';
import 'package:jadoo_iclan/src/screens/landing/components/destinations_section.dart';
import 'package:jadoo_iclan/src/screens/landing/components/easy_and_fast_section.dart';
import 'package:jadoo_iclan/src/screens/landing/components/head_section.dart';
import 'package:jadoo_iclan/src/shared/widgets/footer.dart';
import 'package:jadoo_iclan/src/shared/widgets/landing_background.dart';
import 'package:jadoo_iclan/src/shared/widgets/navbar.dart';
import 'package:jadoo_iclan/src/shared/widgets/navlinks.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return LandingBackground(
      child: Scaffold(
        key: _scaffoldKey,
        endDrawer: context.isDesktopLayout ? null : const Navlinks(),
        backgroundColor: Colors.transparent,
        body: ListView.builder(
          itemCount: _widgets.length,
          padding: EdgeInsets.symmetric(
            horizontal: context.isDesktopLayout ? 140.w : 32.w,
            vertical: context.isDesktopLayout ? 50.h : 32.h,
          ),
          itemBuilder: (BuildContext context, int index) {
            return FadeInLeft(
              from: index % 2 == 0 ? -400 : 400,
              duration: Duration(milliseconds: 1200),
              delay: Duration(microseconds: 1000 * index),
              key: ValueKey(index),
              child: _widgets[index],
            );
          },
        ),
      ),
    );
  }

  List<Widget> get _widgets {
    return [
      Navbar(scaffoldKey: _scaffoldKey),
      HeadSection(),
      CategorySection(),
      DestinationsSection(),
      EasyAndFastSection(),
      // TestimonialsSection(),
      BrandsSection(),
      // SubscriptionSection(),
      Footer(),
    ];
  }
}
