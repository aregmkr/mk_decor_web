import 'package:flutter/material.dart';
import '../constants/colors.dart';

BoxDecoration kHeaderDecoration = BoxDecoration(
  gradient: const LinearGradient(
      colors: [
        Colors.transparent,
        CustomColors.bg
      ]
  ),
  borderRadius: BorderRadius.circular(100),
);