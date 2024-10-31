import 'package:book_store/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

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
            child: ConstantsIcons.leftChevron),
        title: Text(
          'Biz barada',
          style: TextStyle(
            fontFamily: 'Poppins-regular',
            fontSize: 18.sp,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Mobil telefon belgimiz:',
                    style: TextStyle(
                      fontFamily: 'Poppins-regular',
                      fontSize: 12.sp,
                    ),
                  ),
                  Text(
                    '+993 64 77-82-40',
                    style: TextStyle(
                      color: ConstantsColor.customOrageColor,
                      fontFamily: 'Poppins-regular',
                      fontWeight: FontWeight.bold,
                      fontSize: 12.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'E-mail:',
                    style: TextStyle(
                      fontFamily: 'Poppins-regular',
                      fontSize: 12.sp,
                    ),
                  ),
                  Text(
                    'kitapchesmesi@gmail.com',
                    style: TextStyle(
                      color: ConstantsColor.customOrageColor,
                      fontFamily: 'Poppins-regular',
                      fontWeight: FontWeight.bold,
                      fontSize: 12.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Instagram:',
                    style: TextStyle(
                      fontFamily: 'Poppins-regular',
                      fontSize: 12.sp,
                    ),
                  ),
                  Text(
                    '@kitapchesmesi',
                    style: TextStyle(
                      color: ConstantsColor.customOrageColor,
                      fontFamily: 'Poppins-regular',
                      fontWeight: FontWeight.bold,
                      fontSize: 12.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'TikTok:',
                    style: TextStyle(
                      fontFamily: 'Poppins-regular',
                      fontSize: 12.sp,
                    ),
                  ),
                  Text(
                    '@kitapchesmesi',
                    style: TextStyle(
                      color: ConstantsColor.customOrageColor,
                      fontFamily: 'Poppins-regular',
                      fontWeight: FontWeight.bold,
                      fontSize: 12.sp,
                    ),
                  ),
                ],
              ),
              Divider(
                height: 40.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    height: 50.h,
                    image: const AssetImage('assets/logo/logo 3.PNG'),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                'Sizi onlaýn kitap dükanymyzda hoş gördük! ',
                style: TextStyle(
                  fontFamily: 'Poppins-regular',
                  fontSize: 12.sp,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
