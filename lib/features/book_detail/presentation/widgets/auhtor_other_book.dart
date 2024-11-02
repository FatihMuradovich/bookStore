
import 'package:book_store/common/widgets/product.dart/product_item_vertical.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthorOtherBook extends StatelessWidget {
  const AuthorOtherBook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //controller: _controller,
      shrinkWrap: true,
      itemExtent: 160.w,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(right: 5),
          child: ProductItemVertical(),
        );
      },
      itemCount: 10,
    );
  }
}