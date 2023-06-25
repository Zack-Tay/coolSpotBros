// ignore_for_file: prefer_const_constructors, sort_child_properties_last, unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:autotsk/util/color.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TodayEvent extends StatefulWidget {
  const TodayEvent({super.key});

  @override
  State<TodayEvent> createState() => _TodayEventState();
}

class _TodayEventState extends State<TodayEvent> {
  int activeIndex = 0;
  final controller = CarouselController();
  final items = [
    "Item 1",
    "Item 2",
    "Item 3",
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CarouselSlider.builder(
              carouselController: controller,
              itemCount: items.length,
              itemBuilder: (context, index, realIndex) {
                return buildItem(items[index], index);
              },
              options: CarouselOptions(
                  height: MediaQuery.of(context).size.width * 0.4,
                  enableInfiniteScroll: true,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) =>
                      setState(() => activeIndex = index))),
          SizedBox(height: 16.0),
          buildIndicator()
        ],
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        onDotClicked: animateToSlide,
        effect: ExpandingDotsEffect(
            dotHeight: 12, dotWidth: 12, activeDotColor: Colors.lightBlue),
        activeIndex: activeIndex,
        count: items.length,
      );

  void animateToSlide(int index) => controller.animateToPage(index);

  Widget buildItem(String items, int index) => Container(
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        color: homePageBgLightPurpleClr,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(child: Text("Task $index"))
      // Image.asset(images, fit: BoxFit.fitHeight),
      );
}