

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors_standard.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../controllers/controler_home_view.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 12,
      ),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.start,
        spacing: 12,
        direction: Axis.vertical,
        children: [
          Icon(
            MdiIcons.creditCard,
          ),
          _textCreditCard(context),
          _invoice(),
          _disponibleLimit(),
          _installments(),
        ],
      ),
    );
  }

  Widget _textCreditCard(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 38,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Cartão de crédito",
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
          Icon(
            MdiIcons.chevronRight,
          ),
        ],
      ),
    );
  }

  Widget _invoice() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Fatura atual",
          style: TextStyle(
            color: grey50,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        GetBuilder(
          init: HomeViewController(),
          builder: (controller) {
            return Text(
              controller.creditCardValue,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            );
          },
        )
      ],
    );
  }

  Widget _disponibleLimit() {
    return Column(
      children: [
        Text(
          "Limite disponível de 20.000, Kz",
          style: TextStyle(
            color: grey50,
          ),
        ),
      ],
    );
  }

  Widget _installments() {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      margin: const EdgeInsets.only(
        top: 4,
        bottom: 16,
      ),
      decoration: BoxDecoration(
        color: yellow20,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: backgroundColor,
          width: 0.4,
        ),
      ),
      child: const Text(
        "Parcelar compras",
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
