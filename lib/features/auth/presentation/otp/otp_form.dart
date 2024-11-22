import 'package:book_store/common/constants.dart';
import 'package:book_store/features/auth/presentation/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtpForm extends StatelessWidget {
  const OtpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              Text(
                'Tassyklamak',
                style: TextStyle(
                  fontFamily: 'Poppins-regular',
                  fontWeight: FontWeight.bold,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                '+99364778240 belgä ugradylan Otp tassyklama \nkoduny giriziň',
                maxLines: 2,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins-regular',
                  fontSize: 12.sp,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const OtpItem(),
                  SizedBox(width: 10.w,),
                  const OtpItem(),
                  SizedBox(width: 10.w,),
                  const OtpItem(),
                  SizedBox(width: 10.w,),
                  const OtpItem(),
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              ContstantButton(
                title: 'Dowam et',
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}

class OtpItem extends StatelessWidget {
  const OtpItem({
    super.key,
  });
  // final Function() number;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 68,
      width: 64,
      child: TextField(
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .copyWith(fontFamily: 'Poppins-black'),
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
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
        ),
      ),
    );
  }
}
