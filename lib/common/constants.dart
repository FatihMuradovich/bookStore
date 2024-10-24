import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class ConstantsIcons {
  static Icon leftChevron =
      const Icon(FluentSystemIcons.ic_fluent_chevron_left_filled);
  static Icon rightChevron =
      const Icon(FluentSystemIcons.ic_fluent_chevron_right_filled);
}

class ConstantsTextStyle {
  static TextStyle languageDialogText = const TextStyle(
    color: Colors.white,
    fontFamily: 'Poppins-regular',
    fontSize: 16,
  );
  static TextStyle kitapOzellik = const TextStyle(
    fontFamily: 'Poppins-regular',
  );
}

class ConstantsButtonStyle {
  static ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
    elevation: 0.5,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    backgroundColor: const Color(0xFFFF9E0D),
    padding: const EdgeInsets.all(10),
    fixedSize: const Size(300, 50),
  );
}

class ConstantsColor {
  static Color customBlueColor = const Color(0xFF445872);
  static Color customOrageColor = const Color(0xFFFF9E0D);
}
