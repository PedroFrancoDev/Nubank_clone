import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/utils/colors_standard.dart';
import 'package:go_router/go_router.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../home/findOutMore/models/credit_card.dart';

class MyCards extends StatefulWidget {
  const MyCards({super.key});

  @override
  State<MyCards> createState() => _MyCardsState();
}

class _MyCardsState extends State<MyCards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Container(
        decoration: BoxDecoration(
          color: yellow20,
        ),
        child: Column(
          children: [
            _header(),
            Divider(
              color: grey50,
              thickness: 1.4,
              height: 0,
            ),
            Container(
              padding: const EdgeInsets.only(
                top: 100,
              ),
              width: double.infinity,
              child: Wrap(
                spacing: 12,
                direction: Axis.vertical,
                alignment: WrapAlignment.start,
                children: [
                  _cardImage(),
                  _titleAndDescription(),
                  _createCardButton(),
                  _buildCredtCards(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  PreferredSize _appBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(0),
      child: AppBar(
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
    );
  }

  Widget _header() {
    return Container(
      padding: const EdgeInsets.only(
        top: 20,
        left: 20,
        bottom: 20,
        right: 20,
      ),
      color: whiteColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => context.push("/"),
            child: Icon(
              MdiIcons.chevronLeft,
              size: 25,
            ),
          ),
          const Text(
            "Meus cartões",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(),
        ],
      ),
    );
  }

  Widget _cardImage() {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/icons/cartao-credito-will-bank-mastercard-e1666566913315.webp",
            fit: BoxFit.cover,
            //height: 170,
            width: 380,
          ),
        ],
      ),
    );
  }

  Widget _titleAndDescription() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        top: 20,
      ),
      child: Wrap(
        direction: Axis.vertical,
        alignment: WrapAlignment.center,
        spacing: 12,
        children: [
          const Text(
            "Crie seu cartão virtual",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Faça assinaturas e compras online \n de forma rápida e segura.",
            style: TextStyle(
              color: grey,
            ),
          )
        ],
      ),
    );
  }

  Widget _createCardButton() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
      ),
      child: TextButton(
        style: ButtonStyle(
          padding: const MaterialStatePropertyAll(
            EdgeInsets.all(12),
          ),
          backgroundColor: MaterialStatePropertyAll(backgroundColor),
        ),
        onPressed: () {
          GoRouter.of(context).push("/myCards/createCard");
        },
        child: Text(
          "Criar cartão",
          style: TextStyle(
            color: whiteColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildCredtCards() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        top: 60,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          spacing: 12,
          direction: Axis.horizontal,
          children: [
            CreditCardModel(
              typeCard: "visa",
              numberCard: 3,
              dateCard: 3,
              nameCard: "nameCard",
            ),
            CreditCardModel(
              typeCard: "",
              numberCard: 3,
              dateCard: 3,
              nameCard: "nameCard",
            ),
            CreditCardModel(
              typeCard: "visa",
              numberCard: 3,
              dateCard: 3,
              nameCard: "nameCard",
            ),
            CreditCardModel(
              typeCard: "",
              numberCard: 3,
              dateCard: 3,
              nameCard: "nameCard",
            ),
            CreditCardModel(
              typeCard: "visa",
              numberCard: 3,
              dateCard: 3,
              nameCard: "nameCard",
            ),
          ],
        ),
      ),
    );
  }
}
