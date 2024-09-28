import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {

  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color?color;
  final TextOverflow? textOverflow;
  final int? maxLines;


  const CommonText({super.key, required this.text, this.fontSize, this.fontWeight, this.color, this.textOverflow, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(fontSize:fontSize?? 16,fontWeight:fontWeight?? FontWeight.w500,
    color:color?? Colors.black
    ),
    maxLines:maxLines?? 100,
    overflow: textOverflow??  TextOverflow.ellipsis,
    );
  }
}
