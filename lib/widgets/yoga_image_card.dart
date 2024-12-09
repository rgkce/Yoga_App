import 'package:flutter/material.dart';

class YogaImageCard extends StatelessWidget {
  final String? yogaImages;
  const YogaImageCard({super.key, required this.yogaImages});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 118,
      width: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey.shade200,
      ),
      child: Image.asset(yogaImages!),
    );
  }
}