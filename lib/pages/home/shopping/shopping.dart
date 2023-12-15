import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors_standard.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Shopping extends StatelessWidget {
  const Shopping({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _shoppingTitleChevron(),
          const SizedBox(
            height: 12,
          ),
          Text(
            "Vantagens exclusivas das nossas marcas \n preferida",
            style: TextStyle(
              color: grey50,
            ),
          ),
        ],
      ),
    );
  }

  Widget _shoppingTitleChevron() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Shopping",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        Icon(
          MdiIcons.chevronRight,
          size: 23,
        ),
      ],
    );
  }
}
