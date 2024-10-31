import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBanner extends StatefulWidget {
  const CustomBanner({
    super.key,
  });

  @override
  State<CustomBanner> createState() => _CustomBannerState();
}

class _CustomBannerState extends State<CustomBanner> {
  int currentSlide = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170.h,
      width: double.infinity,
      child: CarouselSlider.builder(
        itemCount: 4,
        itemBuilder: (context, int index, int index1) {
          return Container(
            margin: const EdgeInsets.only(left: 12, right: 12),
            height: 170,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage('assets/banner/banner.png'),
              ),
            ),
          );
        },
        options: CarouselOptions(
          autoPlayAnimationDuration: const Duration(seconds: 2),
          autoPlayInterval: const Duration(
            seconds: 5,
          ),
          aspectRatio: 1,
          viewportFraction: 1,
          enlargeCenterPage: true,
          enableInfiniteScroll: true,
          initialPage: 1,
          autoPlay: true,
        ),
      ),
    );
  }
}
