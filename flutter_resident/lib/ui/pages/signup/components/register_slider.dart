import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import './../components/components.dart';

class RegisterSlider extends StatefulWidget {
  @override
  State<RegisterSlider> createState() => _RegisterSliderState();
}

class _RegisterSliderState extends State<RegisterSlider> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final double totalHeight = MediaQuery.of(context).size.height;
    final double cardHeight = totalHeight * 0.4;

    List<Widget> items = [
      ItemRegisterSlider(
        height: cardHeight,
      ),
      ItemRegisterSlider(
        height: cardHeight,
      ),
      ItemRegisterSlider(
        height: cardHeight,
      ),
      ItemRegisterSlider(
        height: cardHeight,
      )
    ];

    return CarouselSlider.builder(
      options: CarouselOptions(
        height: cardHeight,
        initialPage: 0,
        enlargeCenterPage: true,
        autoPlay: false,
        enableInfiniteScroll: false,
        viewportFraction: 0.65,
        onPageChanged: (index, _) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      itemCount: items.length,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
        final isCurrentItem = currentIndex == itemIndex;
        final isPreviousItem = pageViewIndex < currentIndex;

        return Transform.rotate(
          angle: isCurrentItem
              ? 0
              : (isPreviousItem)
                  ? -0.08
                  : 0.08,
          child: Opacity(
            opacity: isCurrentItem ? 1 : 0.7,
            child: items[itemIndex],
          ),
        );
      },
    );
  }
}
