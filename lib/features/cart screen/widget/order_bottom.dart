import 'package:book_store/features/cart%20screen/widget/order_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderBottom extends StatelessWidget {
  const OrderBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -10),
            blurRadius: 20,
            color: const Color(0xFFDADADA).withOpacity(0.10),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Umumy jemi:' ' (1)',
                    style: TextStyle(
                      fontFamily: 'Poppins-regular',
                      fontSize: 14.sp,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text: '413',
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
                            fontFamily: 'Poppins-regular',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 255, 158, 13),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const OrderButton()
          ],
        ),
      ),
    );
  }
}
