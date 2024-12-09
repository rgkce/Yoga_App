import 'package:flutter/material.dart';

class LatestBlog extends StatelessWidget {
  final String? imageLatest;
  const LatestBlog({super.key, required this.imageLatest});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 209,
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey.shade200,
      ),
      child: Image.asset(imageLatest!),
    );
  }
}
