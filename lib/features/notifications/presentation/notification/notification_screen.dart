import 'package:book_store/app/localization/localization.dart';
import 'package:book_store/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: ConstantsIcons.leftChevron),
        title: Text(
           context.l10n.notification,
          style: TextStyle(fontFamily: 'Poppins-regular', fontSize: 18.sp),
        ),
      ),
      body: const Column(
        children: [],
      ),
    );
  }
}
