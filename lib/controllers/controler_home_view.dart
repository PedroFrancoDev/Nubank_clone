import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomeViewController extends GetxController {
  String balance = "128.000,00 Kz";
  String creditCardValue = "1.000.000,00 Kz";
  bool seeBalance = true;

  void showBalance() {
    seeBalance = !seeBalance;

    update();
  }
}
