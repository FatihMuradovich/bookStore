import 'package:book_store/common/constants.dart';
import 'package:book_store/features/auth/presentation/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../cubit/cubit.dart';

class Register extends StatelessWidget {
  Register({super.key});
  final TextEditingController nameController = TextEditingController();
  final TextEditingController surnameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
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
                    child: BlocConsumer<RegisterCubit, RegisterState>(
                      listener: (context, state) {
                        if (state is RegisterSuccess) {
                          // Navigate to another screen on successful registration
                          Navigator.pushNamed(context, '/home');
                        } else if (state is RegisterFailure) {
                          // Show error message on registration failure
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(state.errorMessage)),
                          );
                        }
                      },
                      builder: (context, state) {
                        return Column(
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
                              controller: nameController,
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide:
                                      const BorderSide(color: Colors.grey),
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
                            // Other input fields go here (similar to the above with controllers)
                            SizedBox(
                              height: 30.h,
                            ),
                            ContstantButton(
                              title: 'Hasap açmak',
                              onPressed: () {
                                context.read<RegisterCubit>().registerUser(
                                      phoneNumber: phoneController.text,
                                      email: nameController.text,
                                      password: passwordController.text,
                                      confirmPassword: passwordController.text,
                                      firstName: nameController.text,
                                      lastName: surnameController.text,
                                    );
                              },
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
                        );
                      },
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
