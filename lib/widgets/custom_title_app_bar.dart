
import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomTitleAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title ;
  const CustomTitleAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.transparent,
      leading: IconButton(
        //  color: AppColors.color4F5E7B,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back)),
      title: CustomText(
        title,
        fontSize: 14,
        fontWeight: FontWeight.w700,
      ),
      centerTitle: true,
    );
  }

   @override
   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
