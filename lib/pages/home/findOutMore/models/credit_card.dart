import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors_standard.dart';
import 'package:flutter_svg/svg.dart';

class CreditCardModel extends StatelessWidget {
  String typeCard;
  int numberCard;
  int dateCard;
  String nameCard;

  CreditCardModel({
    super.key,
    required this.typeCard,
    required this.numberCard,
    required this.dateCard,
    required this.nameCard,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
        top: 12,
        bottom: 12,
      ),
      decoration: BoxDecoration(
        color: whiteColor,
        border: Border.all(
          color: Colors.black12,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Wrap(
        alignment: WrapAlignment.start,
        spacing: 8.5,
        direction: Axis.vertical,
        children: [
          
          SvgPicture.asset(
            typeCard == "visa" ? "assets/icons/Visa.svg" : "assets/icons/Mastercard.svg",
          ),
          const Text(
            "**** **** **** 4444",
            style: TextStyle(
              fontSize: 12,
            ),
          ),
          const Text(
            "Pedro Franco",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
          const Text(
            "Excluir",
            style: TextStyle(
              color: Colors.red,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
