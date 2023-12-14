import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors_standard.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Wrap(
        children: [
          _income(
            isFirst: true,
            descriptionBlack1: "Seu ",
            descriptionBlack2: "2021 já está...",
            descriptionYellow1: "informe de",
            descriptionYellow2: "rendimento ",
            context: context,
          ),
          _income(
            isFirst: true,
            descriptionBlack1: "Seu ",
            descriptionBlack2: "2021 já está...",
            descriptionYellow1: "informe de",
            descriptionYellow2: "rendimento ",
            context: context,
          ),
          _income(
            isFirst: true,
            descriptionBlack1: "Seu ",
            descriptionBlack2: "2021 já está...",
            descriptionYellow1: "informe de",
            descriptionYellow2: "rendimento ",
            context: context,
          ),
          _income(
            isFirst: true,
            descriptionBlack1: "Seu ",
            descriptionBlack2: "2021 já está...",
            descriptionYellow1: "informe de",
            descriptionYellow2: "rendimento ",
            context: context,
          ),
        ],
      ),
    );
  }

  Widget _income({
    bool? isFirst,
    required String descriptionBlack1,
    required String descriptionBlack2,
    required String descriptionYellow1,
    required String descriptionYellow2,
    required BuildContext context,
  }) {
    return Container(
      width: MediaQuery.of(context).size.width * .7,
      margin: EdgeInsets.only(right: 16, left: (isFirst ?? false) ? 20 : 0),
      padding: const EdgeInsets.only(
        left: 20,
        top: 20,
        bottom: 20,
        right: 40,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: yellow20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                descriptionBlack1,
                style: const TextStyle(color: Colors.black),
              ),
              Text(
                descriptionYellow1,
                style: TextStyle(
                  color: backgroundColor,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                descriptionYellow2,
                style: TextStyle(
                  color: backgroundColor,
                ),
              ),
              Text(descriptionBlack2)
            ],
          )
        ],
      ),
    );
  }
}
