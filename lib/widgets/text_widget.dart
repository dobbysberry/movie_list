import 'package:flutter/material.dart';

class EasyTextWidget extends StatelessWidget {
  final String txt;
  final double fontSize;
  final FontWeight fontWeight;
  final Color txtColor;
  const EasyTextWidget({super.key,required this.txt,required this.fontSize,required this.fontWeight,required this.txtColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: txtColor,
      ),
    );

  }
}
