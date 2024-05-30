import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '/app/routes/app_pages.dart';
import '/config/theme/my_theme.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.home_rounded),
          title: const Text('Home'),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: SwitchListTile(
              value: !MyTheme.getThemeIsLight,
              secondary: Icon(
                Icons.dark_mode,
                color: Get.theme.appBarTheme.iconTheme?.color,
              ),
              title: Text(
                "Dark Mode",
                style: TextStyle(
                  color: Get.theme.appBarTheme.iconTheme?.color,
                ),
              ),
              activeColor: Colors.white,
              onChanged: controller.onThemeChange,
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                customTile(
                  icon: Icons.person,
                  title: "Profile Page 1",
                  onTap: () {
                    Get.toNamed(Routes.PROFILE1);
                  },
                ),
                const Divider(height: 1),
                customTile(
                  icon: Icons.person_2,
                  title: "Profile Page 2",
                  onTap: () {
                    Get.toNamed(Routes.PROFILE2);
                  },
                ),
                const Divider(height: 1),
                customTile(
                  icon: Icons.person_3,
                  title: "Profile Page 3",
                  onTap: () {
                    Get.toNamed(Routes.PROFILE3);
                  },
                ),
                const Divider(height: 1),
                customTile(
                  icon: Icons.person_4,
                  title: "Profile Page 4",
                  onTap: () {
                    Get.toNamed(Routes.PROFILE4);
                  },
                ),
              ],
            ),
          ),
        ),
      );
    });
  }

  Widget customTile({
    Function()? onTap,
    required String title,
    IconData? icon,
  }) {
    return ListTile(
      onTap: onTap,
      leading: Icon(icon ?? Icons.person),
      title: Text(
        title,
        style: Get.textTheme.titleMedium,
      ),
      trailing: const Icon(Icons.keyboard_arrow_right_outlined),
    );
  }
}
