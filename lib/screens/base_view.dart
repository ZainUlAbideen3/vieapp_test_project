import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vie_app_project/resources/colors.dart';
import 'package:vie_app_project/resources/images_path.dart';
import 'package:vie_app_project/screens/book_screen.dart';
import 'package:vie_app_project/screens/home_screen.dart';
import 'package:vie_app_project/screens/progress_screen.dart';
import 'package:vie_app_project/screens/user_profile_screen.dart';
import 'package:vie_app_project/widgets/custom_title_app_bar.dart';

class BaseView extends StatefulWidget {
  const BaseView({super.key});

  @override
  State<BaseView> createState() => _BaseViewState();
}

class _BaseViewState extends State<BaseView> {
  static const List<Widget> viewList = [
    HomeScreen(),
    ProgressScreen(),
    BookScreen(),
    ProfileScreen()
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// CUSTOM APP BAR
      appBar: const CustomTitleAppBar(
        greeting: "Good Morning",
        userName: "Lossy",
        imagePath: AppImages.profile,
      ),

      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.25),
              offset: const Offset(0, -5),
              spreadRadius: 0,
              blurRadius: 22.80)
        ]),
        child: BottomNavigationBar(
          backgroundColor: AppColors.whiteColor,
          currentIndex: _selectedIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
          unselectedItemColor: AppColors.whiteColor,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(AppImages.homeUnfilled),
                activeIcon: SvgPicture.asset(
                  AppImages.homeFilled,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(AppImages.filter),
                activeIcon: SvgPicture.asset(AppImages.filterFilled),
                label: "Filter"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(AppImages.bookIcon),
                activeIcon: SvgPicture.asset(AppImages.bookIcon),
                label: "Book"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(AppImages.userIcon),
                activeIcon: SvgPicture.asset(AppImages.userIcon),
                label: "Profile"),
          ],
        ),
      ),
      body: viewList.elementAt(_selectedIndex),
    );
  }
}
