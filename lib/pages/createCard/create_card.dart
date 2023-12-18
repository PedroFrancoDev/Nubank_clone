import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/utils/colors_standard.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../home/findOutMore/models/text_field.dart';

class CreateCardView extends StatefulWidget {
  const CreateCardView({super.key});

  @override
  State<CreateCardView> createState() => _CreateCardViewState();
}

class _CreateCardViewState extends State<CreateCardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Container(
        color: whiteColor,
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            _card(),
            const SizedBox(height: 20),
            formCard(),
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

  Widget _card() {
    return Container(
      height: 200,
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(
        top: 20,
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(),
              Container(
                margin: const EdgeInsets.only(right: 20),
                child: Image.asset(
                  "assets/icons/free-mastercard.webp",
                  height: 68,
                  width: 68,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Pedro Franco",
                style: TextStyle(
                  fontSize: 15,
                  color: whiteColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget formCard() {
    return Wrap(
      direction: Axis.vertical,
      spacing: 14,
      children: [
        CustomTextField(
          hint: "Nome",
          icon: MdiIcons.fileXmlBox,
        ),
        CustomTextField(
          hint: "Número do cartão de crédito",
          icon: MdiIcons.fileXmlBox,
        ),
      ],
    );
  }
}
