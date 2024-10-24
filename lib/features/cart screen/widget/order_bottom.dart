import 'package:book_store/common/constants.dart';
import 'package:book_store/features/cart%20screen/widget/order_button.dart';
import 'package:flutter/material.dart';

class OrderBottom extends StatelessWidget {
  const OrderBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
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
                  const Text(
                    'Umumy jemi:' ' (1)',
                    style: TextStyle(
                      fontFamily: 'Poppins-regular',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '413.0 TMT',
                    style: TextStyle(
                        fontFamily: 'Poppins-regular',
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: ConstantsColor.customOrageColor),
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
