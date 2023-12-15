import 'package:flutter/material.dart';

import 'models/card_find_out_more.dart';

class FindOutMore extends StatelessWidget {
  const FindOutMore({super.key});

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
          const Text(
            "Descubra mais",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          _findOutMoreCard(),
        ],
      ),
    );
  }

  Widget _findOutMoreCard() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Wrap(
        spacing: 20,
        children: [
          CardFindOutMoreModel(
            buttonText: "Conhecer",
            description: "Sua liberdade financeira \n começa com você...",
            image: "assets/images/pexels-photo-1181472.jpeg",
            title: "Parcela compras no app",
          ),
          CardFindOutMoreModel(
            buttonText: "Conhecer",
            description: "Sua liberdade financeira \n começa com você...",
            image: "assets/images/transferir (1).jpeg",
            title: "Portabilidade de Salário",
          ),
          CardFindOutMoreModel(
            buttonText: "Conhecer",
            description: "Sua liberdade financeira \n começa com você...",
            image: "assets/images/transferir.jpeg",
            title: "Parcela compras no app",
          ),
        ],
      ),
    );
  }
}
