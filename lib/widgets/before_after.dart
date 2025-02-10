// before_after_slider.dart
import 'package:flutter/material.dart';
import 'package:before_after/before_after.dart';

import '../constants/colors.dart';

class BeforeAfterSlider extends StatefulWidget {
  const BeforeAfterSlider({super.key});

  @override
  State<BeforeAfterSlider> createState() => _BeforeAfterSliderState();
}

class _BeforeAfterSliderState extends State<BeforeAfterSlider> {
  double sliderValue = 0.5;

  @override
  Widget build(BuildContext context) {
    return BeforeAfter(
      trackColor: Colors.white,
      thumbColor: CustomColors.bg,
      value: sliderValue,
      before: Image.asset('assets/image2_0 .jpg'),
      after: Image.asset('assets/image1_0.jpg'),
      onValueChanged: (newValue) {
        setState(() {
          sliderValue = newValue;
        });
      },
    );
  }
}
