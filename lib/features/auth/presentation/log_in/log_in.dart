import 'package:book_store/common/constants.dart';
import 'package:book_store/common/utils.dart';
import 'package:book_store/features/auth/presentation/register/register.dart';
import 'package:book_store/features/auth/presentation/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: GestureDetector(onTap: () {
          Navigator.pop(context);
        },child: ConstantsIcons.xIcon),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
        ),
        child: SingleChildScrollView(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Içeri girmek',
                style: TextStyle(
                    fontFamily: 'Poppins-regular',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                'Içeri girmek içeri telefon belgiňizi \nýazyň',
                textAlign: TextAlign.center,
                maxLines: 2,
                style: TextStyle(
                  fontFamily: 'Poppins-regular',
                  fontSize: 12.sp,
                ),
              ),
              SizedBox(
                height: 30.h,
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
                height: 2.h,
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
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Parolyňyz',
                    style: TextStyle(
                      fontFamily: 'Poppins-regular',
                      fontSize: 12.sp,
                    ),
                  ),
                  Text(
                    'Paroly unutdyňyzmy?',
                    style: TextStyle(
                        fontFamily: 'Poppins-regular',
                        fontSize: 11.sp,
                        color: ConstantsColor.customOrageColor,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              passwordTextFormField(),
              SizedBox(
                height: 20.h,
              ),
              ContstantButton(
                title: 'Iceri girmek',
                onPressed: () {},
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Hasabyňyz ýokmy?',
                    style: TextStyle(
                      fontFamily: 'Poppins-regular',
                      fontSize: 12.sp,
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  GestureDetector(
                    onTap: () =>
                        Navigator.of(context).push(createFadeRoute(Register())),
                    child: Text(
                      'Hasap dörediň.',
                      style: TextStyle(
                        fontFamily: 'Poppins-regular',
                        color: ConstantsColor.customOrageColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 12.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  passwordTextFormField() {
    return TextFormField(
      controller: _passwordController,
      keyboardType: TextInputType.visiblePassword,
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
    );
  }
}

