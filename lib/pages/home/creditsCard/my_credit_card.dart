import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors_standard.dart';
import 'package:go_router/go_router.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MyCreditCard extends StatelessWidget {
  const MyCreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push("/myCards");
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 12,
        ),
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        decoration: BoxDecoration(
          color: yellow20,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: backgroundColor,
            width: 0.4,
          ),
        ),
        child: Row(
          children: [
            Icon(
              size: 23,
              MdiIcons.creditCard,
            ),
            const SizedBox(
              width: 12,
            ),
            const Text(
              "Meus cartões",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
