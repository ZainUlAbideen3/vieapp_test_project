import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:vie_app_project/resources/colors.dart';
import 'package:vie_app_project/resources/images_path.dart';
import 'package:vie_app_project/widgets/custom_text.dart';

class IconTextContainer extends StatelessWidget {
   final double fontSize;
   final String clockSvgPath;
   final String fireSvgPath;
  const IconTextContainer({
    super.key, this.fontSize = 5.7 , this.clockSvgPath = AppImages.clock,this.fireSvgPath = AppImages.fireUnfilled,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildIconTextContainer(text: "20min", svgPath: clockSvgPath),
        const Gap(5),
        buildIconTextContainer(text: "20cal", svgPath: fireSvgPath),
      ],
    );
  }

  Widget buildIconTextContainer(
      {required String text, required String svgPath}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4.5),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(svgPath),
          const Gap(5),
          CustomText(
            text,
            fontSize: fontSize,
            fontWeight: FontWeight.w700,
          ),
        ],
      ),
    );
  }
}
