import 'package:flutter/material.dart';

class YogaCard extends StatelessWidget {
  final String? imageYoga;
  const YogaCard({super.key, required this.imageYoga});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 118,
      width: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey.shade200,
      ),
      child: Image.asset(imageYoga!),
    );
  }
}