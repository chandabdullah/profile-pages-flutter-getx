import 'package:get/get.dart';
import '/config/theme/my_theme.dart';

class HomeController extends GetxController {
  bool get isLightMode => !MyTheme.getThemeIsLight;

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
