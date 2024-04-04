import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:vie_app_project/resources/colors.dart';
import 'package:vie_app_project/resources/images_path.dart';
import '../widgets/custom_text.dart';

class ProgressScreen extends StatefulWidget {
  const ProgressScreen({super.key});

  @override
  State<ProgressScreen> createState() => _ProgressScreenState();
}

class _ProgressScreenState extends State<ProgressScreen> {
  List<Map<String, String>> analysisCardList = [
    {"title1": "Forehead", "imagePath1": AppImages.foreheadAv, "title2": "Lips", "imagePath2": AppImages.lipAv },
    {"title1": "Nose", "imagePath1": AppImages.noseAv, "title2": "Eyes", "imagePath2": AppImages.eyesAv},
    {"title1": "Jaws", "imagePath1": AppImages.jawsAv, "title2": "Cheeks", "imagePath2": AppImages.cheekAv},
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 18),
      children: [
        /// PROGRESS REPORT HEADING
        const CustomText(
          "Progress Report",
          fontSize: 24,
          fontWeight: FontWeight.w700,
        ),
        const Gap(20),
        /// HEADER CARD WIDGET
        buildHeaderCard(),
        const Gap(20),
        /// AREA ANALYSIS CARD WIDGET
        buildAreaAnalysisCard(),
        const Gap(20),
        /// BUILD HISTORY CARD WIDGET
        buildHistoryCard  ()
      ],
    );
  }
  /// HEADER CARD
  Widget buildHeaderCard() {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 24.5, ),
        decoration: BoxDecoration(
            color: AppColors.secondaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          const CustomText(
            "Total days",
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
          const Gap(10),
          const CustomText(
            "1",
            fontSize: 26,
            fontWeight: FontWeight.w700,
          ),
            Container(
              height: 36,
              margin: const EdgeInsets.symmetric(horizontal: 45),
              width: 1,
              color: Colors.black.withOpacity(0.20),
            ),
            const CustomText(
              "Workout",
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
            const Gap(10),
            const CustomText(
              "6",
              fontSize: 26,
              fontWeight: FontWeight.w700,
            ),
        ],),
      );
  }
  /// AREA ANALYSIS CARD
  Widget buildAreaAnalysisCard() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24.5, horizontal: 20),
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText(
            "Area Analysis",
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          const CustomText(
            "Focus on specific areas that require extra attention.",
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 3,
            shrinkWrap: true,
            itemBuilder: (context, index) {
            return buildAnalysisTile(title1: analysisCardList[index]["title1"].toString(), title2: analysisCardList[index]["title2"].toString(), imagePath1: analysisCardList[index]["imagePath1"].toString(), imagePath2:analysisCardList[index]["imagePath2"].toString() );
          },)
        ],),
    );
  }
  /// AREA ANALYSIS TILE
  Widget buildAnalysisTile ({required String title1,required String title2,required String imagePath1,required String imagePath2, }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
          buildTile(title: title1, imagePath: imagePath1 ),
        Container(
          height: 36,
          margin: const EdgeInsets.symmetric(horizontal: 30),
          width: 1,
          color: Colors.black.withOpacity(0.20),
        ),
        buildTile(title: title2, imagePath: imagePath2 ),
      ],) ;
  }
  /// TILE FOR AREA ANALYSIS
  Widget buildTile({required String imagePath, required String title}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Gap(15),
        Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 26,
                  backgroundImage: AssetImage(imagePath),
                ),
                        const SizedBox(width: 10,),
                        Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    title,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),

                  const CustomText(
                    "0 min",
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                ],
                        ),
              ],
            ),
        const Gap(15),
        Container(
          height: 1,
         // padding: EdgeInsets.only(left: 10),
          width: 108,
          color: Colors.black.withOpacity(0.20),
        ),
        const Gap(15),
      ],
    );
  }
  /// HISTORY CARD
  Widget buildHistoryCard  () {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24.5, horizontal: 20),
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText(
            "History of Workouts",
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          const Gap(3),
          Divider(color: Colors.black.withOpacity(0.20),thickness: 1,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                "Jan 14 - Jan 20",
                fontSize: 10,
                color: AppColors.greyTextColor,
                fontWeight: FontWeight.w400,
              ),
              CustomText(
                "3 Workouts, 02:17",
                fontSize: 10,
                color: AppColors.greyTextColor,
                fontWeight: FontWeight.w400,
              ),
            ],
          ),
          ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => buildHistoryTile (), separatorBuilder: (context, index) {
            return Divider(color: Colors.black.withOpacity(0.20),thickness: 1,) ;
          } , itemCount: 2)

        ],),
    );
  }
  ///  HISTORY TILE WIDGET
  Widget buildHistoryTile () {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
          decoration: BoxDecoration(
            color: AppColors.primaryColor, 
            borderRadius: BorderRadius.circular(8)
          ),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(AppImages.foreheadUpward))),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText(
            "Forehead Upward Massage",
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
          const Gap(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.start  ,
            children: [
             const Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 CustomText(
                   "2:00 PM",
                   fontSize: 8,
                   fontWeight: FontWeight.w400,
                 ),
                 CustomText(
                   "Jan 18",
                   fontSize: 8,
                   fontWeight: FontWeight.w400,
                   color: AppColors.greyTextColor,
                 ),
               ],
             ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 28),
                height: 16,
                width: 1,
                color: Colors.black.withOpacity(0.20),
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    "00:00",
                    fontSize: 8,
                    fontWeight: FontWeight.w400,
                  ),
                  CustomText(
                    "Duration",
                    fontSize: 8,
                    fontWeight: FontWeight.w400,
                    color: AppColors.greyTextColor,
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 28),
                height: 16,
                width: 1,
                color: Colors.black.withOpacity(0.20),
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    "00:00",
                    fontSize: 8,
                    fontWeight: FontWeight.w400,
                  ),
                  CustomText(
                    "Exercise",
                    fontSize: 8,
                    fontWeight: FontWeight.w400,
                    color: AppColors.greyTextColor,
                  ),
                ],
              ),
            ],
          )
        ],
      ),

    );

  }
}

