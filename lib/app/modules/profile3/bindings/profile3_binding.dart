import 'package:get/get.dart';

import '../controllers/profile3_controller.dart';

class Profile3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Profile3Controller>(
      () => Profile3Controller(),
    );
  }
}
