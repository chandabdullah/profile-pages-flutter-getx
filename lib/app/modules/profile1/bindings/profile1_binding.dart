import 'package:get/get.dart';

import '../controllers/profile1_controller.dart';

class Profile1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Profile1Controller>(
      () => Profile1Controller(),
    );
  }
}
