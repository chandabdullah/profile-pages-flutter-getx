import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/profile1/bindings/profile1_binding.dart';
import '../modules/profile1/views/profile1_view.dart';
import '../modules/profile2/bindings/profile2_binding.dart';
import '../modules/profile2/views/profile2_view.dart';
import '../modules/profile3/bindings/profile3_binding.dart';
import '../modules/profile3/views/profile3_view.dart';
import '../modules/profile4/bindings/profile4_binding.dart';
import '../modules/profile4/views/profile4_view.dart';
import '../modules/profile5/bindings/profile5_binding.dart';
import '../modules/profile5/views/profile5_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE1,
      page: () => const Profile1View(),
      binding: Profile1Binding(),
    ),
    GetPage(
      name: _Paths.PROFILE2,
      page: () => const Profile2View(),
      binding: Profile2Binding(),
    ),
    GetPage(
      name: _Paths.PROFILE3,
      page: () => const Profile3View(),
      binding: Profile3Binding(),
    ),
    GetPage(
      name: _Paths.PROFILE4,
      page: () => const Profile4View(),
      binding: Profile4Binding(),
    ),
    GetPage(
      name: _Paths.PROFILE5,
      page: () => const Profile5View(),
      binding: Profile5Binding(),
    ),
  ];
}
