import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jadoo_iclan/gen/assets.gen.dart';
import 'package:jadoo_iclan/src/core/extensions/context_x.dart';

class Navlinks extends StatelessWidget {
  const Navlinks({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, String> links = {
      'Destinations': '/',
      'Hotels': '/about',
      'Flights': '/contact',
      'Bookings': '/pricing',
      'Login': '/blog',
    };

    final Map<String, String> languages = {'EN': 'EN', 'FR': 'FR'};

    if (context.isDesktopLayout) {
      return _buildLinks(context, links, languages);
    }
    return Drawer(
      backgroundColor: context.colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 64.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DrawerHeader(child: Assets.images.svg.logo.svg()),
            _buildLinks(context, links, languages),
          ],
        ),
      ),
    );
  }

  Flex _buildLinks(
    BuildContext context,
    Map<String, String> links,
    Map<String, String> languages,
  ) {
    return Flex(
      spacing: context.isDesktopLayout ? 0 : 32.w,
      crossAxisAlignment:
          context.isDesktopLayout
              ? CrossAxisAlignment.center
              : CrossAxisAlignment.start,
      mainAxisAlignment:
          context.isDesktopLayout
              ? MainAxisAlignment.spaceEvenly
              : MainAxisAlignment.start,
      direction: context.flexAxis,
      children: [
        for (var link in links.entries)
          InkWell(child: Text(link.key, style: _linksTextStyle(context))),
        OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.black, width: .8),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
          ),
          child: Text("Sign up", style: _linksTextStyle(context)),
        ),
        DropdownButton(
          value: 'EN',
          items:
              languages.entries
                  .map(
                    (e) => DropdownMenuItem(value: e.key, child: Text(e.value)),
                  )
                  .toList(),
          onChanged: (value) {},
          dropdownColor: Colors.white,
          underline: Container(),
          elevation: 0,
          borderRadius: BorderRadius.circular(4),
          icon: const Icon(Icons.keyboard_arrow_down_rounded, size: 16),
          focusColor: Colors.transparent,
          style: _linksTextStyle(context).copyWith(color: Colors.black),
        ),
      ],
    );
  }

  TextStyle _linksTextStyle(BuildContext context) =>
      GoogleFonts.roboto().copyWith(
        fontSize: 17,
        fontWeight: FontWeight.w700,
        color: context.colors.black,
      );
}
