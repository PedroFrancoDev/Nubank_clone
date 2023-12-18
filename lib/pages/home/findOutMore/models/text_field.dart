import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors_standard.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  String hint;
  IconData icon;
  CustomTextField({
    super.key,
    required this.hint,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          hint,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: backgroundColor,
            ),
          ),
          child: TextField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 8,
              ),
              border: const OutlineInputBorder(),
              prefix: Icon(icon),
            ),
          ),
        ),
      ],
    );
  }
}
