import 'package:book_store/common/constants.dart';
import 'package:book_store/features/cart/cart%20screen/widget/cart_item.dart';
import 'package:book_store/features/cart/cart%20screen/widget/order_bottom.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text(
          'Sebet',
          style: TextStyle(
            fontFamily: 'Poppins-regular',
            fontSize: 18.sp,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(
              FluentSystemIcons.ic_fluent_delete_filled,
              color: ConstantsColor.customOrageColor,
              size: 18.h,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15, left: 12, right: 12),
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Dismissible(
              background: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 186, 26, 26),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Row(
                  children: [
                    Spacer(),
                    Icon(
                      FluentSystemIcons.ic_fluent_delete_filled,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              key: const ValueKey(2),
              child: const CartItem(),
            );
          },
        ),
      ),
      bottomNavigationBar: const OrderBottom(),
    );
  }
}
