import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import '/app/constants/app_constants.dart';

import '../controllers/profile4_controller.dart';

class Profile4View extends GetView<Profile4Controller> {
  const Profile4View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          // padding: const EdgeInsets.all(kPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(kPadding),
                child: ListTile(
                  onTap: () {},
                  minLeadingWidth: 0,
                  horizontalTitleGap: kSpacing,
                  // tileColor: Get.theme.cardColor,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: kSpacing,
                    vertical: 0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(kBorderRadius),
                    side: BorderSide(
                      color: Get.theme.splashColor,
                    ),
                  ),
                  leading: const CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                      "https://firebasestorage.googleapis.com/v0/b/nextlevelsoftpk.appspot.com/o/Files%2Ffile-20240409072352625_OPj0A.jpeg?alt=media",
                    ),
                  ),
                  title: Text(
                    "M Abdullah",
                    style: Get.textTheme.bodyLarge,
                  ),
                  subtitle: Text(
                    "chandabdullah.nls@gmail.com",
                    style: Get.textTheme.bodySmall,
                  ),
                  // trailing: Icon(
                  //   Icons.keyboard_arrow_right_rounded,
                  //   color: Get.theme.hintColor,
                  // ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kPadding),
                child: Text(
                  "General",
                  style: Get.textTheme.bodySmall,
                ),
              ),
              const Gap(3),
              customListTile(
                icon: Icons.person_outline,
                title: "Account Settings",
                onTap: () {},
              ),
              const Divider(
                height: 1,
                endIndent: kPadding,
                indent: kPadding,
              ),
              customListTile(
                icon: Icons.notifications_outlined,
                title: "Notifications",
                onTap: () {},
              ),
              const Divider(
                height: 1,
                endIndent: kPadding,
                indent: kPadding,
              ),
              customListTile(
                icon: Icons.lock_outline,
                title: "Privacy & Permissions",
                onTap: () {},
              ),
              const Gap(10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kPadding),
                child: Text(
                  "Configurations",
                  style: Get.textTheme.bodySmall,
                ),
              ),
              const Gap(3),
              customListTile(
                icon: Icons.language_outlined,
                title: "Language",
                onTap: () {},
              ),
              const Divider(
                height: 1,
                endIndent: kPadding,
                indent: kPadding,
              ),
              customListTile(
                icon: Icons.accessibility_new_outlined,
                title: "Accessability",
                onTap: () {},
              ),
              const Divider(
                height: 1,
                endIndent: kPadding,
                indent: kPadding,
              ),
              customListTile(
                icon: Icons.data_usage_rounded,
                title: "Data Usage",
                onTap: () {},
              ),
              const Gap(10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kPadding),
                child: Text(
                  "Other",
                  style: Get.textTheme.bodySmall,
                ),
              ),
              const Gap(3),
              customListTile(
                icon: Icons.help_outline_rounded,
                title: "Help & Support",
                onTap: () {},
              ),
              const Divider(
                height: 1,
                endIndent: kPadding,
                indent: kPadding,
              ),
              customListTile(
                icon: Icons.info_outline_rounded,
                title: "About Us",
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget customListTile({
    Function()? onTap,
    required String title,
    required IconData icon,
  }) {
    return ListTile(
      onTap: onTap,
      leading: Icon(icon),
      title: Text(
        title,
        style: Get.textTheme.titleMedium,
      ),
      trailing: const Icon(Icons.keyboard_arrow_right_rounded),
    );
  }
}
