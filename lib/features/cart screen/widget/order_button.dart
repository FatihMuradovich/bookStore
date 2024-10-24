import 'package:book_store/common/constants.dart';
import 'package:flutter/material.dart';

class OrderButton extends StatelessWidget {
  const OrderButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            color: ConstantsColor.customOrageColor,
            borderRadius: BorderRadius.circular(10)),
        child: const Padding(
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 25,
          ),
          child: Text(
            'Sargyt etmek',
            style: TextStyle(
              fontFamily: 'Poppins-regular',
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
