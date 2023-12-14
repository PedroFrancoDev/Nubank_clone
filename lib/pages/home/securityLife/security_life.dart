import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors_standard.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SecurityLife extends StatelessWidget {
  const SecurityLife({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _securityTitleAndDescription(),
          _securityButton(),
        ],
      ),
    );
  }

  Widget _securityTitleAndDescription() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Seguros",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          "Promoção para você cuidar do que importa.",
          style: TextStyle(
            color: grey50,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }

  Widget _securityButton() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: yellow20,
        border: Border.all(
          color: backgroundColor,
          width: 0.4,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                MdiIcons.heartOutline,
                size: 23,
              ),
              const SizedBox(
                width: 12,
              ),
              const Text(
                "Seguro vida",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Text(
            "Conhecer",
            style: TextStyle(
              color: backgroundColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
