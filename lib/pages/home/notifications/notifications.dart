import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors_standard.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Wrap(
        children: [_income(isFirst: true), _income(), _income(), _income()],
      ),
    );
  }

  Widget _income({bool? isFirst}) {
    return Container(
      margin: EdgeInsets.only(right: 20, left: (isFirst ?? false) ? 20 : 0),
      padding: const EdgeInsets.only(
        left: 20,
        top: 20,
        bottom: 20,
        right: 40,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: greyColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                "Seu ",
                style: TextStyle(color: Colors.black),
              ),
              Text(
                "informe de",
                style: TextStyle(
                  color: backgroundColor,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "rendimento ",
                style: TextStyle(
                  color: backgroundColor,
                ),
              ),
              const Text("2021 já está...")
            ],
          )
        ],
      ),
    );
  }
}
