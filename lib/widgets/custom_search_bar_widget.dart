import 'package:flutter/material.dart';


class CustomSearchBar extends StatefulWidget {
  final TextEditingController? controller  ;

  const CustomSearchBar({super.key, this.controller,});

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder (borderRadius: BorderRadius.circular(8), borderSide: BorderSide(color: Colors.black, width: 1)) ;
    return SizedBox(
      height:  41,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          /// TEXTFIELD FOR SEARCHING
          Expanded(
            child: TextField(
              controller: widget.controller,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: inputBorder,
                enabledBorder: inputBorder,
                disabledBorder: inputBorder,
               focusedBorder: inputBorder,
                // prefixIcon:Padding(
                //   padding: const EdgeInsets.only(left: 8, top: 8, bottom: 8),
                //   child: SvgPicture.asset(R.images.searchIcon,),
                // ),
                hintText: "Type text here...",
                hintStyle: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.w300, color: Colors.black.withOpacity(0.27),
                  fontFamily: "MerriweatherSans"
                ),
              //  fillColor: AppColors.greyBackGroundColor,
                filled: true,
                contentPadding: const EdgeInsets.only(top: 6, bottom: 6, right:15 ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
