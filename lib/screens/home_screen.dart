import 'package:card_swiper/card_swiper.dart';
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
import '../widgets/focus_card_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  /// LIST CONTAINING FOR MAP FOCUS CARD DATA
  List<Map<String, String>> focusCardList = [
    {"title": "Lip", "imagePath": AppImages.lipFocus},
    {"title": "Forehead", "imagePath": AppImages.foreHeadFocus},
    {"title": "Nose", "imagePath": AppImages.noseFocus},
    {"title": "Cheeks", "imagePath": AppImages.cheekFocus},
    {"title": "Eyes", "imagePath": AppImages.eyesFocus},
    {"title": "Jaws", "imagePath": AppImages.jaysFocus}
  ];
  @override
  Widget build(BuildContext context) {
    /// SLIDER CARD LIST
    final sliderCardList = [
      buildSliderCardWidget(),
      buildSliderCardWidget(),
      buildSliderCardWidget(),
      buildSliderCardWidget()
    ];

    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 15),
      children: [
        /// SEARCH TEXT FIELD
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 18),
          child: CustomSearchBar(),
        ),
        const Gap(5),

        /// SLIDER CARDS
        Swiper(
          itemBuilder: (BuildContext context, int index) {
            return sliderCardList[index];
          },
          itemCount: sliderCardList.length,
          itemWidth: double.infinity,
          itemHeight: 310,
          layout: SwiperLayout.TINDER,
          pagination: null,
          // loop: false,
        ),

        /// FOCUS POINT CARDS
        const Gap(20),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 18),

          /// FOCUS MESSAGE HEADING
          child: CustomText(
            "Face Massage",
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Gap(15),
        /// FOCUS CARDS
        GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 6,
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 1.51),
            itemBuilder: (context, index) {
              return FocusCardWidget(
                title: focusCardList[index]["title"]!,
                imagePath: focusCardList[index]["imagePath"]!,
              );
            }),
        const Gap(15),
        /// FOCUS MESSAGE HEADING
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 18),
          child: CustomText(
            "Face Massage & Care",
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Gap(15),
        buildFaceMessageCard()
      ],
    );
  }
    /// SLIDER CARD WIDGET
  Widget buildSliderCardWidget() {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(colors: [
                const Color(0xFFFFDEB8).withOpacity(1),
                const Color(0xFFFFEBD4).withOpacity(1),
              ])),
          child: Stack(
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: Image.asset(AppImages.breathingPic)),
            ],
          ),
        ),
        const Positioned(
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
              IconTextContainer(
                fontSize: 10,
                clockSvgPath: AppImages.clockFilled,
                fireSvgPath: AppImages.fire,
              )
            ],
          ),
        ),
        Positioned(bottom: 40, left: 18, child: buildContainerButton())
      ],
    );
  }

  /// Container button with icon
  Widget buildContainerButton({
    double fontSize = 18,
    String svgPath = AppImages.videoPlay,
    void Function()? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 181,
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 11.5),
        decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(11),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF030020).withOpacity(0.19),
                offset: const Offset(
                  0,
                  24,
                ),
                blurRadius: 17.1,
              )
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(svgPath),
            const Gap(12),
            CustomText(
              "Start",
              fontSize: fontSize,
              fontWeight: FontWeight.w600,
            ),
          ],
        ),
      ),
    );
  }
  /// FACE MESSAGE CARD WIDGET
  Widget buildFaceMessageCard() {
    return Stack(
      children: [
        Container(
          //  padding: EdgeInsets.only(left: 15),
          margin: const EdgeInsets.symmetric(horizontal: 18),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(colors: [
                const Color(0xFFB8E7F8).withOpacity(1),
                const Color(0xFF85DCF7).withOpacity(1),
              ])),
          child: Stack(
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: Image.asset(AppImages.smillyRed)),
            ],
          ),
        ),
        const Positioned(
          left: 38,
          top: 30,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                "Face Care",
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
              CustomText(
                "See Tutorials",
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ],
          ),
        ),
        Positioned(
            bottom: 20,
            left: 38,
            child: SizedBox(
              width: 140,
              child: buildContainerButton(
                  onTap: () {},
                  svgPath: AppImages.smallVideoPlay,
                  fontSize: 13.82),
            ))
      ],
    );
  }
}
