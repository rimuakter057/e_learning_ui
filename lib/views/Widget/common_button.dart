import 'package:flutter/material.dart';
import '../../utils/colors.dart';

class CommonButton extends StatelessWidget {
  final String buttonName;
  final double? width;
  final double? height;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextOverflow? textOverflow;
  final EdgeInsetsGeometry? margin;

  const CommonButton({
    super.key,
    required this.buttonName,
    this.width,
    this.height,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.textOverflow,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height:height?? MediaQuery.sizeOf(context).height * .08,
        width:width?? MediaQuery.sizeOf(context).width,
        margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            buttonName,
            style: TextStyle(
                fontSize: fontSize ?? 16,
                fontWeight: fontWeight ?? FontWeight.w500,
                color: color ?? Colors.black),
                overflow: textOverflow ?? TextOverflow.ellipsis,
          ),
        ));
  }
}
