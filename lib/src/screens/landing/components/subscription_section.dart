import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jadoo_iclan/gen/assets.gen.dart';
import 'package:jadoo_iclan/src/core/extensions/context_x.dart';

class SubscriptionSection extends StatelessWidget {
  const SubscriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding:
              context.isDesktopLayout
                  ? EdgeInsets.symmetric(horizontal: 80.w, vertical: 80.h)
                  : EdgeInsets.symmetric(horizontal: 32.w, vertical: 32.h),
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: context.colors.lightPurple.withValues(alpha: 0.2),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(129.r),
              topRight: Radius.circular(20.r),
              bottomLeft: Radius.circular(20.r),
              bottomRight: Radius.circular(20.r),
            ),
          ),
          child: Column(
            children: [
              Text(
                "Subscribe to get information, latest news and other interesting offers about Jadoo",
                textAlign: TextAlign.center,
                style: context.tt.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 33.sp,
                ),
              ),
              SizedBox(height: 64.h),
              Padding(
                padding:
                    context.isDesktopLayout
                        ? EdgeInsets.symmetric(horizontal: 200.w)
                        : context.isTabletLayout
                        ? EdgeInsets.symmetric(horizontal: 42.w)
                        : EdgeInsets.zero,
                child:
                    !context.isMobileLayout
                        ? Row(
                          children: [
                            Expanded(flex: 3, child: _buildTextField(context)),
                            SizedBox(width: 16.w),
                            Expanded(child: _buildGradientButton()),
                          ],
                        )
                        : Column(
                          children: [
                            _buildTextField(context),
                            SizedBox(height: 16.h),
                            _buildGradientButton(),
                          ],
                        ),
              ),
            ],
          ),
        ),
        _buildSender(),
      ],
    );
  }

  Positioned _buildSender() {
    return Positioned(
      top: -16.h,
      right: -32.w,
      child: Assets.images.svg.subscriptionSend.svg(),
    );
  }

  TextField _buildTextField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIconConstraints: BoxConstraints(minWidth: 21.w),
        hintText: "Your email",
        prefixIcon: Padding(
          padding: EdgeInsets.only(left: 24.w, right: 10.w),
          child: Assets.images.svg.emailIcon.svg(),
        ),
        filled: true,
        fillColor: context.colors.white,
        contentPadding: EdgeInsets.only(top: 24.h, left: 100.w, bottom: 24.h),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  Widget _buildGradientButton() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundBuilder: (context, states, child) {
          return DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  context.colors.btnTopGradient,
                  context.colors.btnBottomGradient,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.w),
                child: Text("Subscribe"),
              ),
            ),
          );
        },
      ),
      child: SizedBox(),
    );
  }
}
