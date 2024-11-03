import 'package:book_store/common/constants.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            height: 300.h,
            decoration: const BoxDecoration(
              color: Color(0xffff9200),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Align(
              alignment: Alignment.center,
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Hasap açmak',
                          style: TextStyle(
                              fontFamily: 'Poppins-regular',
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          children: [
                            Text(
                              'Adyňyz',
                              style: TextStyle(
                                fontFamily: 'Poppins-regular',
                                fontSize: 12.sp,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        TextFormField(
                          //controller: _nameController,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
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
                            hintStyle: const TextStyle(height: 1),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Bu kisim bos birakilamaz';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          children: [
                            Text(
                              'Familýaňyz',
                              style: TextStyle(
                                fontFamily: 'Poppins-regular',
                                fontSize: 12.sp,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        TextFormField(
                          //controller: _nameController,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
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
                            hintStyle: const TextStyle(height: 1),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Bu kisim bos birakilamaz';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          children: [
                            Text(
                              'Telefon belgiňiz',
                              style: TextStyle(
                                fontFamily: 'Poppins-regular',
                                fontSize: 12.sp,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                            fillColor: Colors.grey[50],
                            filled: true,
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
                            hintStyle: TextStyle(
                                fontFamily: 'Poppins-regular', fontSize: 12.sp),
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
                          height: 10.h,
                        ),
                        Row(
                          children: [
                            Text(
                              'Parolyňyz',
                              style: TextStyle(
                                fontFamily: 'Poppins-regular',
                                fontSize: 12.sp,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        TextFormField(
                          //controller: _nameController,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
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
                            hintStyle: const TextStyle(height: 1),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Bu kisim bos birakilamaz';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 0.5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            backgroundColor: ConstantsColor.customOrageColor,
                            padding: const EdgeInsets.all(10),
                            fixedSize: Size(double.maxFinite, 35.h),
                          ),
                          child: Text(
                            'Hasap açmak',
                            style: TextStyle(
                              fontFamily: 'Poppins-black',
                              fontSize: 16.sp,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Häzirki wagtda hasabyňyz barmy?',
                              style: TextStyle(
                                fontFamily: 'Poppins-regular',
                                fontSize: 10.sp,
                              ),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            GestureDetector(
                              onTap: () =>
                                  Navigator.pushNamed(context, '/logIn'),
                              child: Text(
                                'Içeri girmek.',
                                style: TextStyle(
                                  fontFamily: 'Poppins-regular',
                                  color: ConstantsColor.customOrageColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10.sp,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
