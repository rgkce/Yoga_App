import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  final String? imageVideo;
  const VideoCard({super.key, required this.imageVideo});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey.shade200,
      ),
      child: Image.asset(imageVideo!),
    );
  }
}
