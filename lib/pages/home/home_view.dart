// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/pages/home/model/header.dart';

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
          color: Colors.white,
          child: const Column(
            children: [
              Header()
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
