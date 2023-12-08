import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomeViewController extends GetxController {
  String balance = "128.000,00 kz";
  bool seeBalance = true;

  void showBalance() {
    seeBalance = !seeBalance;

    update();
  }
}
