import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:profile_pages_flutter/app/constants/app_constants.dart';

import '../controllers/profile1_controller.dart';

class Profile1View extends GetView<Profile1Controller> {
  const Profile1View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.theme.cardColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(kPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Profile",
                      style: Get.textTheme.headlineLarge,
                    ),
                  ),
                  // IconButton(
                  //   onPressed: () {
                  //     Get.back();
                  //   },
                  //   icon: Icon(
                  //     Icons.arrow_back_ios,
                  //     color: Get.theme.primaryColor,
                  //   ),
                  // ),
                ],
              ),
              const Gap(30),
              Row(
                children: [
                  const CircleAvatar(
                    radius: 35,
                    backgroundImage: NetworkImage(
                      "https://firebasestorage.googleapis.com/v0/b/nextlevelsoftpk.appspot.com/o/Files%2Ffile-20240409072352625_OPj0A.jpeg?alt=media",
                    ),
                  ),
                  const Gap(10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "M Abdullah",
                          style: Get.textTheme.titleLarge,
                        ),
                        Text(
                          "chandabdullah.nls@gmail.com",
                          style: Get.textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                  const Gap(10),
                  TextButton(
                    onPressed: () {},
                    child: Text("Edit"),
                  ),
                ],
              ),
              const Gap(20),
              Container(
                decoration: BoxDecoration(
                  color: Get.theme.scaffoldBackgroundColor,
                  borderRadius: BorderRadius.circular(kBorderRadius),
                  border: Border.all(
                    color: Get.theme.splashColor,
                    width: .5,
                  ),
                ),
                child: Material(
                  type: MaterialType.transparency,
                  child: Column(
                    children: [
                      customListTile(
                        onTap: () {},
                        icon: Icons.bar_chart_rounded,
                        title: "Activity",
                        subtitle: "Tickets, Daily Pass, Trips",
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(kBorderRadius),
                          topLeft: Radius.circular(kBorderRadius),
                        ),
                      ),
                      const Divider(height: 1),
                      customListTile(
                        onTap: () {},
                        icon: Icons.currency_exchange_rounded,
                        title: "Transaction History",
                        subtitle: "Today, Week, Month",
                      ),
                      const Divider(height: 1),
                      customListTile(
                        onTap: () {},
                        icon: Icons.location_on_rounded,
                        title: "Address Details",
                        subtitle: "Home, Work, Shop",
                      ),
                      const Divider(height: 1),
                      customListTile(
                        onTap: () {},
                        icon: Icons.person_pin_rounded,
                        title: "Contact Us",
                        subtitle: "Email Address, Website",
                      ),
                      const Divider(height: 1),
                      customListTile(
                        onTap: () {},
                        icon: Icons.mark_unread_chat_alt_rounded,
                        title: "Social Media",
                        subtitle: "Instagram, Twitter, Youtube",
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(kBorderRadius),
                          bottomLeft: Radius.circular(kBorderRadius),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Text(
          "App Version: 1.9.9 (12)",
          textAlign: TextAlign.center,
          style: Get.textTheme.bodySmall,
        ),
      ),
    );
  }

  Widget customListTile({
    required IconData icon,
    required String title,
    String? subtitle,
    Function()? onTap,
    BorderRadius? borderRadius,
  }) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius ?? BorderRadius.zero,
      ),
      onTap: onTap,
      leading: Icon(
        icon,
        size: 25,
      ),
      title: Text(
        title,
        style: Get.textTheme.bodyLarge,
      ),
      subtitle: subtitle == null
          ? null
          : Text(
              subtitle,
              style: Get.textTheme.bodySmall,
            ),
      trailing: const Icon(Icons.keyboard_arrow_right_rounded),
    );
  }
}
