import 'package:get/get.dart';

import '../controllers/profile4_controller.dart';

class Profile4Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Profile4Controller>(
      () => Profile4Controller(),
    );
  }
}
