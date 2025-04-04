import 'dart:async';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jadoo_iclan/gen/assets.gen.dart';
import 'package:jadoo_iclan/src/core/extensions/context_x.dart';
import 'package:jadoo_iclan/src/screens/landing/components/testimonial_card.dart';
import 'package:jadoo_iclan/src/shared/widgets/sections_head.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TestimonialsSection extends StatefulWidget {
  const TestimonialsSection({super.key});

  @override
  State<TestimonialsSection> createState() => _TestimonialsSectionState();
}

class _TestimonialsSectionState extends State<TestimonialsSection> {
  late final List<Map<String, dynamic>> _testimonials;
  late final CardSwiperController _cardSwiperController;
  int _currentIndex = 0;

  @override
  void initState() {
    _fillTestimonials();
    _cardSwiperController = CardSwiperController();
    super.initState();
  }

  @override
  void dispose() {
    _cardSwiperController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Column(
            spacing: 64.h,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SectionsHead(
                title: "TESTIMONIALS",
                subtitle: "What people say about Us.",
                centered: false,
              ),
              _buildDots(context),
            ],
          ),
        ),
        SizedBox(width: 64.w),
        Expanded(
          flex: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [_buildSwiper(), _buildArrows()],
          ),
        ),
      ],
    );
  }

  Column _buildArrows() {
    return Column(
      children: [
        IconButton(
          onPressed: _previous,
          icon: Icon(Icons.keyboard_arrow_up_rounded),
        ),
        IconButton(
          onPressed: _next,
          icon: Icon(Icons.keyboard_arrow_down_rounded),
        ),
      ],
    );
  }

  SizedBox _buildSwiper() {
    return SizedBox(
      width: 500.w,
      height: 300.h,
      child: CardSwiper(
        controller: _cardSwiperController,
        cardsCount: _testimonials.length,
        numberOfCardsDisplayed: 2,
        onSwipe: _onSwipe,
        scale: 1,

        backCardOffset: Offset(70.w, 80.h),
        cardBuilder: (
          context,
          index,
          horizontalOffsetPercentage,
          verticalOffsetPercentage,
        ) {
          final tsm = _testimonials[index];
          return TestimonialCard(
            avatarPath: tsm["avatar"],
            text: tsm['text'],
            name: tsm["name"],
            location: tsm["location"],
          );
        },
      ),
    );
  }

  AnimatedSmoothIndicator _buildDots(BuildContext context) {
    return AnimatedSmoothIndicator(
      activeIndex: _currentIndex % _testimonials.length,
      count: _testimonials.length,
      effect: WormEffect(
        activeDotColor: context.colors.darkBlue,
        dotWidth: 12.sp,
        dotHeight: 12.sp,
        spacing: 20.w,
        dotColor: Colors.grey.shade300,
      ),
    );
  }

  void _fillTestimonials() {
    _testimonials = [
      {
        "text":
            "On the Windows talking painted pasture yet its express parties use. Sure last upon he same as knew next. Of believed or diverted no.",
        "avatar": Assets.images.avatar.path,
        "name": "Mike taylor",
        "location": "Lahore, Pakistan",
      },
      {
        "text": faker.lorem.sentence() * 3,
        "avatar": Assets.images.avatar.path,
        "name": faker.person.name(),
        "location": "Lahore, Pakistan",
      },
      {
        "text": faker.lorem.sentence() * 3,
        "avatar": Assets.images.avatar.path,
        "name": "Landry Simo",
        "location": "Douala, Cameroun",
      },
    ];
  }

  void _previous() {
    _cardSwiperController.swipe(CardSwiperDirection.top);
  }

  void _next() {
    _cardSwiperController.swipe(CardSwiperDirection.bottom);
  }

  FutureOr<bool> _onSwipe(
    int previousIndex,
    int? currentIndex,
    CardSwiperDirection direction,
  ) {
    setState(() {
      if (direction == CardSwiperDirection.top) {
        _currentIndex--;
      } else if (direction == CardSwiperDirection.bottom) {
        _currentIndex++;
      }
    });
    return true;
  }
}
