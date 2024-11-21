import 'package:book_store/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContstantButton extends StatelessWidget {
  const ContstantButton({
    super.key, required this.title, required this.onPressed,
  });
  final String title;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0.5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: ConstantsColor.customOrageColor,
        padding: const EdgeInsets.all(10),
        fixedSize: Size(double.maxFinite, 35.h),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontFamily: 'Poppins-black',
          fontSize: 16.sp,
          
          color: Colors.white,
        ),
      ),
    );
  }
}
