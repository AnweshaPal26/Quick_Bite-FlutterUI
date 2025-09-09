import 'package:flutter/material.dart';

class NutritionCard extends StatelessWidget {
  final String value;
  final String label;
  const NutritionCard({required this.value, required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
        ),
        Text(
          label,
          style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
        ),
      ],
    );
  }
}
