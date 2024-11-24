import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConstantsIcons {
  static Icon leftChevron = Icon(
    FluentSystemIcons.ic_fluent_chevron_left_filled,
    size: 20.h,
  );
  static Icon rightChevron = Icon(
    FluentSystemIcons.ic_fluent_chevron_right_filled,
    size: 18.h,
  );
  static Icon xIcon = Icon(
    FluentSystemIcons.ic_fluent_dismiss_filled,
    size: 20.h,
  );
   static Icon favorite = Icon(
    FluentSystemIcons.ic_fluent_heart_regular,
    size: 20.h,
  );
}

class ConstantsTextStyle {
  static TextStyle languageDialogText = TextStyle(
    color: Colors.white,
    fontFamily: 'Poppins-regular',
    fontWeight: FontWeight.bold,
    fontSize: 14.sp,
  );
  static TextStyle kitapOzellik =
      TextStyle(fontFamily: 'Poppins-regular', fontSize: 12.sp);
}

class ConstantsButtonStyle {
  static ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
    elevation: 0.5,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    backgroundColor: ConstantsColor.customOrageColor,
    padding: const EdgeInsets.all(10),
    fixedSize: Size(250.w, 40.h),
  );
}

class ConstantsColor {
  static Color customBlueColor = const Color(0xFF445872);
  static Color customOrageColor = const Color(0xffff9200);
}
