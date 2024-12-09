import 'package:book_store/common/constants.dart';
import 'package:book_store/features/auth/presentation/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderDetail extends StatelessWidget {
  const OrderDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: ConstantsIcons.leftChevron,
        ),
        title: Text(
          'Sargydy tamamla',
          style: TextStyle(
            fontFamily: 'Poppins-regular',
            fontSize: 18.sp,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Telefon belgiňiz',
              style: TextStyle(
                fontFamily: 'Poppins-regular',
                fontSize: 14.sp,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            TextFormField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '+993',
                        style: TextStyle(
                            fontFamily: 'Poppins-regular',
                            fontWeight: FontWeight.bold,
                            fontSize: 12.sp),
                      ),
                      const VerticalDivider(
                        color: Colors.black,
                        thickness: 1,
                        width: 4,
                      ),
                    ],
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    color: ConstantsColor.customBlueColor,
                  ),
                ),
                hintText: '(xx)xx-xx-xx',
                hintStyle:
                    TextStyle(fontFamily: 'Poppins-regular', fontSize: 12.sp),
                border: InputBorder.none,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Haýyş, nomeri giriziň';
                }
                return null;
              },
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              'Eltip bermek salgysy',
              style: TextStyle(
                fontFamily: 'Poppins-regular',
                fontSize: 14.sp,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            TextFormField(
              maxLines: 2,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                hintText: 'Salgy',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    color: ConstantsColor.customBlueColor,
                  ),
                ),
                fillColor: Colors.grey[50],
                filled: true,
                border: InputBorder.none,
                hintStyle: const TextStyle(
                  fontFamily: 'Poppins-regular',
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              'Goşmaça bellik',
              style: TextStyle(
                fontFamily: 'Poppins-regular',
                fontSize: 14.sp,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            TextFormField(
              maxLines: 4,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                hintText: 'Bellik',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    color: ConstantsColor.customBlueColor,
                  ),
                ),
                fillColor: Colors.grey[50],
                filled: true,
                border: InputBorder.none,
                hintStyle: const TextStyle(
                  fontFamily: 'Poppins-regular',
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            ContstantButton(
              title: 'Sargydy tamamla',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
