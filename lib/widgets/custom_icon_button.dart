import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:vie_app_project/resources/colors.dart';
import 'package:vie_app_project/resources/images_path.dart';
import 'package:vie_app_project/widgets/custom_text.dart';

class IconTextContainer extends StatelessWidget {
  // final String text;
  // final String svgPath;
  const IconTextContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildIconTextContainer(text: "20min", svgPath: AppImages.clockFilled),
        Gap(10),
        buildIconTextContainer(text: "20cal", svgPath: AppImages.fire),
      ],
    );
  }

  Widget buildIconTextContainer(
      {required String text, required String svgPath}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4.5),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(svgPath),
          Gap(5),
          CustomText(
            text,
            fontSize: 10,
            fontWeight: FontWeight.w700,
          ),
        ],
      ),
    );
  }
}
