import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/controllers/controler_home_view.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AccountNubank extends StatefulWidget {
  const AccountNubank({super.key});

  @override
  State<AccountNubank> createState() => _AccountNubankState();
}

class _AccountNubankState extends State<AccountNubank> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _accountShevron(),
          const SizedBox(
            height: 16,
          ),
          _balance(),
        ],
      ),
    );
  }

  @override
  void initState() {
    
  }

  Widget _accountShevron() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Conta",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Icon(
          size: 25,
          MdiIcons.chevronRight,
        ),
      ],
    );
  }

  Widget _balance() {
    return GetBuilder<HomeViewController>(
      init: HomeViewController(),
      builder: (controller) {
        return Text(
          controller.seeBalance ? controller.balance : "** ** **",
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        );
      },
    );
  }
}
