import 'package:get/get.dart';

import '../controllers/profile5_controller.dart';

class Profile5Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Profile5Controller>(
      () => Profile5Controller(),
    );
  }
}
