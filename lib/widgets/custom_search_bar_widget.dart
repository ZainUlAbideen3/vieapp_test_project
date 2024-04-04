import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vie_app_project/resources/colors.dart';
import 'package:vie_app_project/resources/images_path.dart';

class CustomSearchBar extends StatefulWidget {
  final TextEditingController? controller;

  const CustomSearchBar({
    super.key,
    this.controller,
  });

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide.none
    );
    return TextField(
      controller: widget.controller,
      keyboardType: TextInputType.text,
      cursorWidth: 1,
      decoration: InputDecoration(
        border: inputBorder,
        enabledBorder: inputBorder,
        disabledBorder: inputBorder,
        focusedBorder: inputBorder,
        prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 22.5, right: 10),
            child: SvgPicture.asset(AppImages.searchIcon)),
        hintText: "search",
        hintStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Colors.black.withOpacity(0.27),
        ),
        fillColor: AppColors.filledColor,
        filled: true,
        contentPadding: const EdgeInsets.all(14),
      ),
    );
  }
}
