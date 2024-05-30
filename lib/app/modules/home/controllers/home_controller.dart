import 'package:get/get.dart';
import 'package:profile_pages_flutter/config/theme/my_theme.dart';

class HomeController extends GetxController {
  onThemeChange(val) {
    MyTheme.changeTheme();
    update();
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
