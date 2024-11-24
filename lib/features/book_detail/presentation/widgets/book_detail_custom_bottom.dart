
import 'package:book_store/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailCustomBottom extends StatelessWidget {
  const BookDetailCustomBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      decoration: BoxDecoration(
        border: Border.all(width: 0.1),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -10),
            blurRadius: 20,
            color: const Color(0xFFDADADA).withOpacity(0.10),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: RichText(
                text: TextSpan(
                  text: '250',
                  style: TextStyle(
                    fontFamily: 'Poppins-regular',
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                    color: const Color(0xFFFF9E0D),
                  ),
                  children: [
                    TextSpan(
                      text: ' TMT',
                      style: TextStyle(
                        fontFamily: 'Poppin-regular',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        color: ConstantsColor.customOrageColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: const Color(0xFFFF9E0D),
                  padding: const EdgeInsets.all(10),
                  fixedSize: Size(0, 30.h),
                ),
                onPressed: () async {
                  // DbHelper.instance
                  //     .insetBook(widget.book..quantity = 1)
                  //     .then((value) => showTopToast());
                },
                child: Text(
                  'Satyn al',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins-regular',
                      fontWeight: FontWeight.w700,
                      fontSize: 14.sp),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
