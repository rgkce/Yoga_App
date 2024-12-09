import 'package:flutter/material.dart';

class MoreYogaCard extends StatelessWidget {
  final String? moreYogas;
  const MoreYogaCard({super.key, required this.moreYogas});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 118,
      width: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey.shade200,
      ),
      child: Image.asset(moreYogas!),
    );
  }
}