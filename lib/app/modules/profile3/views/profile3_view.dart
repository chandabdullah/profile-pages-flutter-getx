import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile_pages_flutter/app/constants/app_constants.dart';
import 'package:profile_pages_flutter/app/data/local/my_shared_pref.dart';

import '../controllers/profile3_controller.dart';

class Profile3View extends GetView<Profile3Controller> {
  const Profile3View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(kPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Profile",
                style: Get.textTheme.headlineLarge!.copyWith(
                  fontFamily: GoogleFonts.nunito().fontFamily,
                ),
              ),
              const Gap(20),
              ListTile(
                onTap: () {},
                tileColor: Get.theme.cardColor,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: kSpacing,
                  vertical: kSpacing / 2,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(kBorderRadius),
                  side: BorderSide(
                    color: Get.theme.splashColor,
                  ),
                ),
                leading: const CircleAvatar(
                  radius: 30,
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
                trailing: Icon(
                  Icons.keyboard_arrow_right_rounded,
                  color: Get.theme.hintColor,
                ),
              ),
              const Gap(20),
              Container(
                decoration: BoxDecoration(
                  color: Get.theme.cardColor,
                  borderRadius: BorderRadius.circular(kBorderRadius),
                  border: Border.all(
                    color: Get.theme.splashColor,
                  ),
                ),
                child: Material(
                  type: MaterialType.transparency,
                  child: Column(
                    children: [
                      customListTile(
                        icon: Icons.work_outline,
                        title: "Workspace",
                        iconColor: Colors.red,
                        onTap: () {},
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(kBorderRadius),
                          topLeft: Radius.circular(kBorderRadius),
                        ),
                      ),
                      customListTile(
                        icon: Icons.security_outlined,
                        title: "Security",
                        iconColor: Colors.orange,
                        onTap: () {},
                      ),
                      customListTile(
                        icon: Icons.notifications_outlined,
                        title: "Notification",
                        iconColor: Colors.orange,
                        onTap: () {},
                      ),
                      customListTile(
                        icon: Icons.dark_mode_outlined,
                        title: "Theme",
                        iconColor: Colors.teal,
                        onTap: () {},
                        trailing:
                            MySharedPref.getThemeIsLight() ? "Light" : "Dark",
                      ),
                      customListTile(
                        icon: Icons.language_outlined,
                        title: "Language",
                        iconColor: Colors.blueGrey,
                        onTap: () {},
                        trailing: "English",
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(kBorderRadius),
                          bottomLeft: Radius.circular(kBorderRadius),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Gap(20),
              Container(
                decoration: BoxDecoration(
                  color: Get.theme.cardColor,
                  borderRadius: BorderRadius.circular(kBorderRadius),
                  border: Border.all(
                    color: Get.theme.splashColor,
                  ),
                ),
                child: Material(
                  type: MaterialType.transparency,
                  child: Column(
                    children: [
                      customListTile(
                        icon: Icons.share_outlined,
                        title: "Share Profile",
                        iconColor: Colors.deepPurple,
                        onTap: () {},
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(kBorderRadius),
                          topLeft: Radius.circular(kBorderRadius),
                        ),
                      ),
                      customListTile(
                        icon: Icons.privacy_tip_outlined,
                        title: "Privacy",
                        iconColor: Colors.purple,
                        onTap: () {},
                      ),
                      customListTile(
                        icon: Icons.help_outline_rounded,
                        title: "Help Center",
                        iconColor: Colors.blue,
                        onTap: () {},
                      ),
                      customListTile(
                        icon: Icons.logout,
                        title: "Logout",
                        iconColor: Colors.red,
                        onTap: () {},
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(kBorderRadius),
                          bottomLeft: Radius.circular(kBorderRadius),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Gap(20),
              Text(
                "Next Level Software",
                style: Get.textTheme.bodySmall,
              ),
              const Gap(10),
              Wrap(
                spacing: 10,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Text(
                    "Version 1.45",
                    style: Get.textTheme.bodySmall,
                  ),
                  Icon(
                    Icons.circle,
                    size: 5,
                    color: Get.theme.disabledColor,
                  ),
                  Text(
                    "Legal",
                    style: Get.textTheme.bodySmall,
                  ),
                  Icon(
                    Icons.circle,
                    size: 5,
                    color: Get.theme.disabledColor,
                  ),
                  Text(
                    "Website",
                    style: Get.textTheme.bodySmall,
                  ),
                ],
              )
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
    Color? iconColor,
    BorderRadius? borderRadius,
    String? trailing,
  }) {
    return ListTile(
      dense: true,
      onTap: onTap,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: kSpacing,
        vertical: 0,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius ?? BorderRadius.zero,
      ),
      iconColor: iconColor,
      leading: Icon(
        icon,
      ),
      title: Text(
        title,
        style: Get.textTheme.bodyMedium,
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (trailing != null)
            Text(
              trailing,
              style: Get.textTheme.bodySmall,
            ),
          Icon(
            Icons.keyboard_arrow_right_rounded,
            color: Get.theme.hintColor,
          ),
        ],
      ),
    );
  }
}
