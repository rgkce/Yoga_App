import 'package:flutter/material.dart';

class TrainingCard extends StatelessWidget {
  final String? imageTraining;
  const TrainingCard({super.key, required this.imageTraining});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 118,
      width: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey.shade200,
      ),
      child: Image.asset(imageTraining!),
    );
  }
}