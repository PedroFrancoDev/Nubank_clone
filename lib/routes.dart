import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/createCard/create_card.dart';
import 'package:flutter_application_1/pages/home/home_view.dart';
import 'package:flutter_application_1/pages/myCards/my_cards.dart';
import 'package:go_router/go_router.dart';

final routes = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: "/myCards",
      pageBuilder: (context, state) => const MaterialPage(
        child: MyCards(),
        fullscreenDialog: true,
      ),
    ),
    GoRoute(
      path: "/myCards/createCard",
      pageBuilder: (context, state) => const MaterialPage(
        child:  CreateCardView(),
        fullscreenDialog: true,
      ),
    ),
  ],
);
