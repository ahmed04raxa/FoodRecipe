import 'package:flutter/material.dart';

class UiHelper {
  Widget mSpacer({double mWidth = 11, double mHeight = 11}) =>
      SizedBox(width: mWidth, height: mHeight);

  static customImage({
    required String imgUrl,
    double mWidth = 50,
    double mHeight = 50,
  }) {
    return Image.asset("assets/images/$imgUrl", width: mWidth, height: mHeight);
  }

  static customText({
    required String text,
    Color color = Colors.black,
    required double fontSize,
    FontWeight? fontWeight,
  }) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
