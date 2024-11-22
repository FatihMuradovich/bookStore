import 'package:book_store/app/app.dart';
import 'package:book_store/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            SizedBox(
              height: 10.h,
            ),
            Image.asset(
              'assets/icons/globe_light.png',
              height: 30.h,
            ),
            SizedBox(
              height: 5.h,
            ),
            const Text(
              'Dili saýlaň',
              style: TextStyle(fontFamily: 'Poppins-regular', fontSize: 16),
            ),
            SizedBox(
              height: 10.h,
            ),
            ElevatedButton(
              onPressed: () {
                
                 App.of(context)?.setLocale(const Locale('tm'),);
              },
              style: ConstantsButtonStyle.elevatedButtonStyle,
              child: Text(
                'Türkmençe',
                style: ConstantsTextStyle.languageDialogText,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            ElevatedButton(
              onPressed: () {
                
                App.of(context)?.setLocale(const Locale('ru'));
              },
              style: ConstantsButtonStyle.elevatedButtonStyle,
              child: Text(
                'Русский',
                style: ConstantsTextStyle.languageDialogText,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
          ],
        )
      ],
    );
  }
}
