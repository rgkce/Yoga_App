import 'package:flutter/material.dart';

class CategoryCard extends StatefulWidget {
  final String? categoryName;
  final String? imagePath;
  const CategoryCard(
      {super.key, required this.categoryName, required this.imagePath});

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 69,
      width: 69,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey.shade200,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(widget.imagePath!, height: 40, width: 40),
          Text(widget.categoryName!),
        ],
      ),
    );
  }
}
