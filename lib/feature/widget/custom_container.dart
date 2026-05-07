import 'package:calculatior/core/responsive/responsive_extension.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.backColor,
    required this.txt,
    required this.txtSize,
    required this.txtColor, required this.radius, this.press,
    this.height,
    this.width,
  });

  final Color backColor;
  final Color txtColor;
  final String txt;
  final double txtSize;
  final double radius;
  final void Function()? press;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: height!=null?height!.h:60,
        width: width!=null?width!.w:70,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius.sp),
            color: backColor),
        child: Center(
          child: Text(
            txt,
            style: TextStyle(
              fontSize: txtSize.sp,
              fontWeight: FontWeight.w600,
              color: txtColor,
            ),
          ),
        ),
      ),
    );
  }
}