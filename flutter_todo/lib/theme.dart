import 'package:flutter/material.dart';

const Color bluishClr = Color(0xFF4e5ae8);
const Color yellowClr = Color(0xFFFFB746);
const Color pinkClr = Color(0xFFff4667);
const Color white = Colors.white;
const primaryClr = bluishClr;
const Color darkGreyClr = Color(0xFF121212);
Color darkHeaderClr = Color(0xFF424242);

class Themes {
  static final light = ThemeData(
    // primaryColor 대신에 appBar 배경색을 설정하는 겨우 사용.
    colorScheme: ColorScheme.light().copyWith(
      primary: primaryClr,
      brightness: Brightness.light,
    ),
    // 아래 primaryColor는 appBar의 배경색에 영향을 주지 않는다.
    primaryColor: primaryClr,
  );
  static final dark = ThemeData(
    colorScheme: ColorScheme.dark().copyWith(
      primary: darkGreyClr,
      brightness: Brightness.dark,
    ),
    primaryColor: darkGreyClr,
  );
}
