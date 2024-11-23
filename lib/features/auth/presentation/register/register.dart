import 'package:book_store/common/constants.dart';
import 'package:book_store/features/auth/cubit/validation/cubit/form_cubit.dart';
import 'package:book_store/features/auth/cubit/validation/cubit/form_state.dart';
import 'package:book_store/features/auth/presentation/widgets/button.dart';
import 'package:book_store/features/profile/presentation/profile%20screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../cubit/loginRegistration/cubit.dart';

class Register extends StatelessWidget {
  Register({super.key});
  final TextEditingController nameController = TextEditingController();
  final TextEditingController surnameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: ConstantsIcons.xIcon),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: BlocConsumer<RegisterCubit, RegisterState>(
          listener: (context, state) {
            if (state is RegisterSuccess) {
              // Navigate to another screen on successful registration
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProfileScreen()));
            } else if (state is RegisterFailure) {
              // Show error message on registration failure
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.errorMessage)),
              );
            }
          },
          builder: (context, state) {
            return SingleChildScrollView(
              child: BlocBuilder<FormCubit, FormCustomState>(
                
                builder: (context, state) {
                   final cubit = context.read<FormCubit>();
                  return Column(
                    children: [
                      Text(
                        'Hasap açmak',
                        style: TextStyle(
                            fontFamily: 'Poppins-regular',
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Text(
                        'Hasap açmak üçin gerekli maglumatlary \ndolduryň',
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        style: TextStyle(
                          fontFamily: 'Poppins-regular',
                          fontSize: 12.sp,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Adynyz',
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
                        onChanged: cubit.firstNameChanged,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          hintText: '',
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
                          fillColor: Colors.white,
                          filled: true,
                          border: InputBorder.none,
                          hintStyle: const TextStyle(height: 1),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Bu meýdan boş bolup bilmez';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Familyanyz',
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
                        controller: surnameController,
                        onChanged: cubit.lastNameChanged,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          hintText: '',
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
                          fillColor: Colors.white,
                          filled: true,
                          border: InputBorder.none,
                          hintStyle: const TextStyle(height: 1),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Bu meýdan boş bolup bilmez';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Telefon belginiz',
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
                        controller: phoneController,
                        onChanged: cubit.phoneNumberChanged,
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Parolynyz',
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
                        controller: passwordController,
                        onChanged: cubit.passwordChanged,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          hintText: '',
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
                          fillColor: Colors.white,
                          filled: true,
                          border: InputBorder.none,
                          hintStyle: const TextStyle(height: 1),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Bu meýdan boş bolup bilmez';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      state.isSubmitting
                      ? const CircularProgressIndicator()
                      : ContstantButton(
                        title: 'Hasap acmak',
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
                    ],
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}


// Stack(
//         children: [
//           Container(
//             height: 300.h,
//             decoration: const BoxDecoration(
//               color: Color(0xffff9200),
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 20.w),
//             child: Align(
//               alignment: Alignment.center,
//               child: Card(
//                 color: Colors.white,
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Padding(
//                     padding: const EdgeInsets.all(5),
//                     child: BlocConsumer<RegisterCubit, RegisterState>(
//                       listener: (context, state) {
//                         if (state is RegisterSuccess) {
//                           // Navigate to another screen on successful registration
//                           Navigator.pushReplacement(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => const ProfileScreen()));
//                         } else if (state is RegisterFailure) {
//                           // Show error message on registration failure
//                           ScaffoldMessenger.of(context).showSnackBar(
//                             SnackBar(content: Text(state.errorMessage)),
//                           );
//                         }
//                       },
//                       builder: (context, state) {
//                         return Column(
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             Text(
//                               'Hasap açmak',
//                               style: TextStyle(
//                                   fontFamily: 'Poppins-regular',
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 16.sp),
//                             ),
//                             SizedBox(
//                               height: 20.h,
//                             ),
//                             Row(
//                               children: [
//                                 Text(
//                                   'Adyňyz',
//                                   style: TextStyle(
//                                     fontFamily: 'Poppins-regular',
//                                     fontSize: 12.sp,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             SizedBox(
//                               height: 5.h,
//                             ),
//                             TextFormField(
//                               controller: nameController,
//                               keyboardType: TextInputType.name,
//                               decoration: InputDecoration(
//                                 enabledBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(12),
//                                   borderSide:
//                                       const BorderSide(color: Colors.grey),
//                                 ),
//                                 focusedBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(12),
//                                   borderSide: BorderSide(
//                                     color: ConstantsColor.customBlueColor,
//                                   ),
//                                 ),
//                                 fillColor: Colors.grey[50],
//                                 filled: true,
//                                 border: InputBorder.none,
//                                 hintStyle: const TextStyle(height: 1),
//                               ),
//                               validator: (value) {
//                                 if (value == null || value.isEmpty) {
//                                   return 'Bu kisim bos birakilamaz';
//                                 }
//                                 return null;
//                               },
//                             ),
//                             // Other input fields go here (similar to the above with controllers)
//                             SizedBox(
//                               height: 30.h,
//                             ),
//                             ContstantButton(
//                               title: 'Hasap açmak',
//                               onPressed: () {
//                                 context.read<RegisterCubit>().registerUser(
//                                       phoneNumber: phoneController.text,
//                                       email: nameController.text,
//                                       password: passwordController.text,
//                                       confirmPassword: passwordController.text,
//                                       firstName: nameController.text,
//                                       lastName: surnameController.text,
//                                     );
//                               },
//                             ),

//                             SizedBox(
//                               height: 10.h,
//                             ),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Text(
//                                   'Häzirki wagtda hasabyňyz barmy?',
//                                   style: TextStyle(
//                                     fontFamily: 'Poppins-regular',
//                                     fontSize: 10.sp,
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   width: 5.w,
//                                 ),
//                                 GestureDetector(
//                                   onTap: () =>
//                                       Navigator.pop(context),
//                                   child: Text(
//                                     'Içeri girmek.',
//                                     style: TextStyle(
//                                       fontFamily: 'Poppins-regular',
//                                       color: ConstantsColor.customOrageColor,
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 10.sp,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         );
//                       },
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),