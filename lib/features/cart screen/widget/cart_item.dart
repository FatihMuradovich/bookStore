import 'package:book_store/common/constants.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0.1,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 75.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          margin: const EdgeInsets.all(4),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 90.w,
                width: 90.w,
                decoration: BoxDecoration(
                  color: Colors.grey.shade50,
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/books/1.png'),
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Dorian Grayin Portresi',
                          style: TextStyle(
                              fontFamily: 'Poppins-black', fontSize: 12.sp),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Icon(
                            FluentSystemIcons.ic_fluent_delete_filled,
                            color: ConstantsColor.customOrageColor,
                            size: 18.h,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Text(
                        'Oscar Wilde',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 10.sp, fontFamily: 'Poppins-regular'),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: '205',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF282846),
                              fontSize: 16.sp,
                            ),
                            children: [
                              TextSpan(
                                text: ' TMT',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFF282846),
                                  fontSize: 12.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 3),
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Icon(
                                  FluentSystemIcons.ic_fluent_remove_filled,
                                  color: ConstantsColor.customBlueColor,
                                  size: 18.h,
                                ),
                              ),
                              SizedBox(
                                width: 8.w,
                              ),
                              Text(
                                '1',
                                style: TextStyle(
                                    color: ConstantsColor.customBlueColor,
                                    fontFamily: 'Poppins-black',
                                    fontSize: 18.sp),
                              ),
                              SizedBox(
                                width: 8.w,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Icon(
                                  FluentSystemIcons.ic_fluent_add_filled,
                                  color: ConstantsColor.customBlueColor,
                                  size: 18.h,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
