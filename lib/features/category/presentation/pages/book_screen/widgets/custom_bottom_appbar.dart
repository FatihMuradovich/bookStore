import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  final String title;
  final Icon icon;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 0.1)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            Text(
              title,
              style: TextStyle(
                fontFamily: 'Poppins-regular',
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
