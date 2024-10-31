import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreenCategory extends StatelessWidget {
  const HomeScreenCategory({
    super.key,
    required this.text,
    this.nextPage,
  });

  final String text;
  final Function()? nextPage;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                fontFamily: 'Poppins-regular',
                fontSize: 16.sp,
              ),
            ),
            GestureDetector(
              onTap: nextPage,
              child: Icon(
                FluentSystemIcons.ic_fluent_chevron_right_filled,
                size: 20.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
