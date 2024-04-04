import 'package:flutter/material.dart';
import 'custom_text.dart';

class CustomTitleAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String greeting;
  final String userName;
  final String imagePath;
  const CustomTitleAppBar(
      {super.key,
      required this.imagePath,
      required this.greeting,
      required this.userName});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 85,
      surfaceTintColor: Colors.transparent,
      leading: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        child: CircleAvatar(
          backgroundColor: Colors.grey,
          radius: 21,
          backgroundImage: AssetImage(imagePath),
        ),
      ),
      title: Row(
        children: [
          CustomText(
            "$greeting, ",
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          CustomText(
            userName,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ],
      ),
      centerTitle: false,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
