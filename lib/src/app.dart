import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jadoo_iclan/src/core/constants/app_colors.dart';
import 'package:jadoo_iclan/src/core/constants/app_strings.dart';
import 'package:jadoo_iclan/src/screens/landing/landing_screen.dart';

class JadooApp extends StatelessWidget {
  const JadooApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(1440, 810),
      minTextAdapt: true,
      builder: (_, child) {
        return MaterialApp(
          title: AppStrings.appName,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            colorScheme: ColorScheme.fromSeed(
              seedColor: AppColors.primary,
              primary: AppColors.primary,
            ),
            textTheme: Typography.englishLike2021
                .apply(fontSizeFactor: 1.sp)
                .apply(
                  fontFamily: GoogleFonts.poppins().fontFamily,
                  displayColor: Colors.black,
                  bodyColor: Colors.black,
                ),
          ),
          home: child,
        );
      },
      child: LandingScreen(),
    );
  }
}
