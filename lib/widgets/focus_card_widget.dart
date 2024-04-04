import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:vie_app_project/resources/colors.dart';
import 'custom_icon_button.dart';
import 'custom_text.dart';

class FocusCardWidget extends StatelessWidget {
  final String imagePath ;
  final String title ;
  const FocusCardWidget({super.key, required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
     return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppColors.cardColor,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [BoxShadow(
                color: Colors.black.withOpacity(0.25),
            offset: const Offset(0, 21),
          blurRadius: 6.6,spreadRadius: -15
    )],
              gradient: LinearGradient(colors: [
                const Color(0xFFFFDEB8).withOpacity(1),
                const Color(0xFFFFEBD4).withOpacity(1),
              ])
              ),
          child: Stack(
            children: [
              // Image.asset(
              //   AppImages.focusCard,
              //   // width: 165,
              //   // height: 109,
              //
              // ),
              Align(
                  alignment: Alignment.bottomRight,
                  child: Image.asset(imagePath)),
            ],
          ),
        ),
        Positioned(
          left: 15,
          bottom: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                title,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
              const CustomText(
                "Shape your lips with Yoga",
                fontSize: 6.72,
                fontWeight: FontWeight.w600,
              ),
              const Gap(5),
              const IconTextContainer()
            ],
          ),
        ),

      ],
    );;
  }
}
