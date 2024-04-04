import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  final double fontSize;
  final FontWeight fontWeight;
  final double? height;
  final Color color;
  final String fontFamily;
  final int? maxLines;
  final TextOverflow? overflow;

  const CustomText(this.text,
      {super.key,
      this.fontFamily = "Inter",
      this.textAlign = TextAlign.left,
      this.fontSize = 14,
      this.fontWeight = FontWeight.normal,
      this.height,
      this.color = Colors.black,
      this.maxLines,
      this.overflow});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: fontFamily,
          fontSize: fontSize,
          fontWeight: fontWeight,
          height: height,
          color: color),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}
