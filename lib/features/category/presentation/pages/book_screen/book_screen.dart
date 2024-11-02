import 'package:book_store/common/constants.dart';
import 'package:book_store/common/widgets/product.dart/product_item_horizontal.dart';
import 'package:book_store/common/widgets/product.dart/product_item_vertical.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookScreen extends StatelessWidget {
  const BookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: ConstantsIcons.leftChevron),
        automaticallyImplyLeading: false,
        title: Text(
          'Subcategory name',
          style: TextStyle(
            fontFamily: 'Poppins-regular',
            fontSize: 18.sp,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            itemCount: 6,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 215.h,
            ),
            itemBuilder: (context, index) {
              return const ProductItemVertical();
            }),
      ),
    );
  }
}
