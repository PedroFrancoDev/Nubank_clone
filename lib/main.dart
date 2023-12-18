import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'PFbank',
      routerConfig: routes,
    );
  }
}
