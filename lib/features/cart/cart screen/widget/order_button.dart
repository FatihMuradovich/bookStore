import 'package:book_store/common/constants.dart';
import 'package:book_store/common/utils.dart';
import 'package:book_store/features/cart/cart%20screen/order_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderButton extends StatelessWidget {
  const OrderButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderDetail()));
      },
      
      child: Container(
        decoration: BoxDecoration(
            color: ConstantsColor.customOrageColor,
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 25,
          ),
          child: Text(
            'Sargydy tamamla',
            style: TextStyle(
                fontFamily: 'Poppins-regular',
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 12.sp),
          ),
        ),
      ),
    );
  }
}
