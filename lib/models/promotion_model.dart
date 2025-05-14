import 'package:flutter/material.dart';

class PromotionModel {
  final String title;
  final String subtitle;
  final String buttonText;
  final String imagePath;
  final String tag;
  final Color textColor; 

  PromotionModel({
    required this.title,
    required this.subtitle,
    required this.buttonText,
    required this.imagePath,
    required this.tag,
    this.textColor = const Color(0xFF48261D), // default color
  });
}
