import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jadoo_iclan/gen/assets.gen.dart';
import 'package:jadoo_iclan/src/core/constants/app_strings.dart';
import 'package:jadoo_iclan/src/core/extensions/context_x.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final List<(String, String)> companyLink = [
      ("About", "/about"),
      ("Careers", "/careers"),
      ("Mobile", "/mobile"),
    ];
    final List<(String, String)> contactLink = [
      ("Help/FAQ", "/faq"),
      ("Press", "/press"),
      ("Affiliates", "/affiliates"),
    ];
    final List<(String, String)> moreLink = [
      ("Airline Fees", "/airlineFees"),
      ("Airline", "/airline"),
      ("Low Fare Tips", "/lowFareTips"),
    ];

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 80.h),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildFooterLogo(context),
              _buildPart(context, title: 'Company', links: companyLink),
              _buildPart(context, title: 'Contact', links: contactLink),
              _buildPart(context, title: 'More', links: moreLink),
              _buildSocials(context),
            ],
          ),
          SizedBox(height: 48.h),
          Text("All rights reserved@jadoo.co", style: context.tt.bodyMedium),
        ],
      ),
    );
  }

  Expanded _buildSocials(BuildContext context) {
    final List<(String, String)> socials = [
      (Assets.images.svg.facebookLogo.path, "https://www.facebook.com/"),
      (Assets.images.svg.instagramLogo.path, "https://www.instagram.com/"),
      (Assets.images.svg.twitterLogo.path, "https://twitter.com/"),
    ];

    return Expanded(
      child: Column(
        children: [
          Row(
            children: [
              for (var social in socials)
                Padding(
                  padding: EdgeInsets.only(top: 8.h),
                  child: InkWell(child: SvgPicture.asset(social.$1)),
                ),
            ],
          ),
          Text("Discover our app", style: context.tt.titleLarge),
          SizedBox(height: 12.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: Assets.images.svg.googlePlay.svg()),
              SizedBox(width: 8.w),
              Expanded(child: Assets.images.svg.appStore.svg()),
            ],
          ),
        ],
      ),
    );
  }

  Flexible _buildPart(
    BuildContext context, {
    required String title,
    required List<(String, String)> links,
  }) {
    return Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 12.h),
          Text(
            title,
            style: context.tt.titleLarge?.copyWith(
              color: context.colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 22.h),
          for (var link in links)
            Padding(
              padding: EdgeInsets.only(top: 8.h),
              child: InkWell(
                child: Text(
                  link.$1,
                  style: context.tt.titleMedium?.copyWith(
                    color: context.colors.headerSubText,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildFooterLogo(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${AppStrings.appName}.",
            style: context.tt.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 44.sp,
              color: context.colors.darkBlue,
            ),
          ),
          SizedBox(height: 18.h),
          Text(
            "Book your trip in minute, get full Control for much longer.",
            style: context.tt.bodySmall,
          ),
        ],
      ),
    );
  }
}
