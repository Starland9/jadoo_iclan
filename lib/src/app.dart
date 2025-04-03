import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jadoo_iclan/src/core/constants/app_strings.dart';
import 'package:jadoo_iclan/src/core/extensions/context_x.dart';
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
              seedColor: context.colors.primary,
              primary: context.colors.primary,
            ),
            textTheme: Typography.englishLike2021
                .apply(fontSizeFactor: 1.sp)
                .apply(
                  fontFamily: GoogleFonts.poppins().fontFamily,
                  displayColor: context.colors.headerSubText,
                  bodyColor: context.colors.headerSubText,
                ),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                backgroundColor: context.colors.buttonBg,
                foregroundColor: Colors.white,
                fixedSize: Size.fromHeight(60.h),
                elevation: 0,
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                shadowColor: context.colors.buttonBg,

                textStyle: GoogleFonts.poppins(fontSize: 16.sp),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.r)),
                ),
              ),
            ),
          ),
          home: child,
        );
      },
      child: LandingScreen(),
    );
  }
}
