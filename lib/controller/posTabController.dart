import 'package:get/get.dart';

class MenuController extends GetxController {
  var selectedMenu = 'All'.obs;

  void setSelectedMenu(String menu) {
    selectedMenu.value = menu;
  }
}
