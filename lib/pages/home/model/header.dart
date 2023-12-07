import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors_standard.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _profile(),
              _options(),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          _welcome(),
        ],
      ),
    );
  }

  _profile() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(
          left: 20,
          top: 15,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          color: secondaryPurple,
        ),
        child: IconButton(
          color: whiteColor,
          onPressed: () {},
          icon: Icon(MdiIcons.accountOutline),
        ),
      ),
    );
  }

  _options() {
    return Row(
      children: [
        IconButton(
          color: whiteColor,
          icon: Icon(MdiIcons.eyeOutline),
          onPressed: () {},
        ),
        IconButton(
          color: whiteColor,
          icon: Icon(MdiIcons.helpCircleOutline),
          onPressed: () {},
        ),
        IconButton(
          color: whiteColor,
          icon: const Icon(Icons.person_add_alt_1_outlined),
          onPressed: () {},
        )
      ],
    );
  }

  _welcome() {
    return Container(
      margin: const EdgeInsets.only(
        left: 20,
        bottom: 20,
      ),
      child: const Text(
        "Olá, Pedro Franco",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
