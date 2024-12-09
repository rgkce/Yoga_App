import 'package:flutter/material.dart';

class PopularCard extends StatelessWidget {
  final String? imagePopular;
  const PopularCard({super.key, required this.imagePopular});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 118,
      width: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey.shade200,
      ),
      child: Image.asset(imagePopular!),
    );
  }
}
