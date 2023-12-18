// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/pages/home/creditsCard/credit_card.dart';
import 'package:flutter_application_1/pages/home/model/header.dart';
import 'package:flutter_application_1/pages/home/securityLife/security_life.dart';
import 'package:flutter_application_1/pages/home/shopping/shopping.dart';
import 'package:flutter_application_1/utils/colors_standard.dart';

import 'account/account_nubank.dart';
import 'account/menu_items.dart';
import 'creditsCard/my_credit_card.dart';
import 'findOutMore/find_out_more.dart';
import 'investments/investiments.dart';
import 'notifications/notifications.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: backgroundColor,
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Container(
          color: whiteColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Header(),
              const AccountNubank(),
              const MenuItems(),
              Divider(
                thickness: 1.6,
                color: greyColor,
                height: 22,
              ),
              const MyCreditCard(),
              Divider(
                thickness: 1.6,
                color: greyColor,
                height: 22,
              ),
              const Notifications(),
              const SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 1.6,
                color: greyColor,
                height: 22,
              ),
              const CreditCard(),
              Divider(
                thickness: 1.6,
                color: greyColor,
                height: 22,
              ),
              const Investiments(),
              Divider(
                thickness: 1.6,
                color: greyColor,
                height: 22,
              ),
              const SecurityLife(),
              Divider(
                thickness: 1.6,
                color: greyColor,
                height: 22,
              ),
              const Shopping(),
              Divider(
                thickness: 1.6,
                color: greyColor,
                height: 22,
              ),
              const FindOutMore(),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSize _appBar() {
    return PreferredSize(
      child: AppBar(
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      preferredSize: const Size.fromHeight(0),
    );
  }
}
