import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors_standard.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Investiments extends StatelessWidget {
  const Investiments({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _textInvestmentChevron(),
          _investmentsDescription(),
          _consultValue(),
        ],
      ),
    );
  }

  Widget _textInvestmentChevron() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Investimentos",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Icon(
          MdiIcons.chevronRight,
          size: 23,
        )
      ],
    );
  }

  Widget _investmentsDescription() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 12,
      ),
      child: Text(
        "O jeito NU de investir: sem asteriscos, \n linguagem facíl a partir de 2.000,00Kz. Saiba mais.",
        style: TextStyle(
          color: grey50,
        ),
      ),
    );
  }

  Widget _consultValue() {
    return Container(
      margin: const EdgeInsets.only(
        top: 12,
      ),
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
        children: [
          Icon(
            MdiIcons.cash,
            size: 23,
          ),
          const SizedBox(
            width: 12,
          ),
          const Text(
            "Consultar saldo para trânsferencia",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
