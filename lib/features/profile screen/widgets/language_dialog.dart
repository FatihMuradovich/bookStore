import 'package:book_store/common/constants.dart';
import 'package:flutter/material.dart';

class LanguageDialog extends StatelessWidget {
  const LanguageDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      children: [
        Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              'assets/icons/globe_light.png',
              height: 30,
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'Dili saýlaň',
              style: TextStyle(fontFamily: 'Poppins-regular', fontSize: 16),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ConstantsButtonStyle.elevatedButtonStyle,
              child: Text(
                'Türkmençe',
                style: ConstantsTextStyle.languageDialogText,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ConstantsButtonStyle.elevatedButtonStyle,
              child: Text(
                'Русский',
                style: ConstantsTextStyle.languageDialogText,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        )
      ],
    );
  }
}
