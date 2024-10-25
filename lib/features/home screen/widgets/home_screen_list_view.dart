import 'package:book_store/common/widgets/product.dart/product_item_vertical.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreenListView extends StatelessWidget {
  const HomeScreenListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: ListView.builder(
          // cacheExtent: 105,
          itemCount: 5,
          itemExtent: 150.h,
          scrollDirection: Axis.horizontal,
          //physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(right: 5),
              child: ProductItemVertical(),
            );
          }),
    );
  }
}
