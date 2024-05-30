import 'package:get/get.dart';

import '../controllers/profile2_controller.dart';

class Profile2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Profile2Controller>(
      () => Profile2Controller(),
    );
  }
}
