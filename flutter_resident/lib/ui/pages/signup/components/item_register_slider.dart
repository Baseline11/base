import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_resident/ui/components/components.dart';
import 'package:flutter_resident/ui/helpers/helpers.dart';
import 'package:flutter_svg/svg.dart';

class ItemRegisterSlider extends StatelessWidget {
  final double height;

  ItemRegisterSlider({
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            R.strings.signUp.sliderCard1PngPath,
          ),
        ),
      ),
    );
  }
}
