import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:vie_app_project/resources/colors.dart';
import 'package:vie_app_project/resources/images_path.dart';
import 'package:vie_app_project/widgets/custom_icon_button.dart';
import 'package:vie_app_project/widgets/custom_search_bar_widget.dart';
import 'package:vie_app_project/widgets/custom_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 20),
      children: [
        /// SEARCH TEXT FIELD
        CustomSearchBar(),
        Gap(10),
        buildSliderCardWidget(),
      ],
    );
  }

  Widget buildSliderCardWidget() {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(left: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(colors: [
                Color(0xFFFFDEB8).withOpacity(1),
                Color(0xFFFFEBD4).withOpacity(1),
              ])),
          child: Stack(
            children: [
              Image.asset(
                AppImages.swiperCard,
                width: double.infinity,
                height: 302,
              ),
              Align(
                  alignment: Alignment.topRight,
                  child: Image.asset(AppImages.breathingPic)),
            ],
          ),
        ),
        Positioned(
          left: 18,
          top: 48,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                "Face Massage",
                fontSize: 32,
                fontWeight: FontWeight.w700,
              ),
              CustomText(
                "Beginner Exercises",
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              Gap(5),
              IconTextContainer()
            ],
          ),
        ),
        Positioned(bottom: 40, left: 18, child: buildContainerButton())
      ],
    );
  }

  /// Container button with icon
  Widget buildContainerButton({
    void Function()? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 181,
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 11.5),
        decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(11),
            boxShadow: [
              BoxShadow(
                color: Color(0xFF030020).withOpacity(0.19),
                offset: Offset(
                  0,
                  24,
                ),
                blurRadius: 17.1,
              )
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(AppImages.videoPlay),
            Gap(12),
            CustomText(
              "Start",
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ],
        ),
      ),
    );
  }
}
