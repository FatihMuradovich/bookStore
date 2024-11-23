import 'package:book_store/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});
   // Sosyal medya URL'leri
  final String instagramUrl = 'https://www.instagram.com/kitapchesmesi/';
  final String tiktokUrl = 'https://www.tiktok.com/@kitapchesmesi';
  
  // Telefon numarası
  final String phoneNumber = '+99364778240';

  // URL'yi açma
  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'URL açılamıyor: $url';
    }
  }

  // Telefon numarasını arama
  Future<void> _callPhoneNumber(String number) async {
    final Uri uri = Uri(scheme: 'tel', path: number);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Telefon numarası açılamıyor: $number';
    }
  }

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
                  GestureDetector(
                    onTap: () => _callPhoneNumber(phoneNumber),
                    child: Text(
                      '+993 64 77-82-40',
                      style: TextStyle(
                        color: ConstantsColor.customOrageColor,
                        fontFamily: 'Poppins-regular',
                        fontWeight: FontWeight.bold,
                        fontSize: 12.sp,
                      ),
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
                  GestureDetector(
                    onTap: () => _launchUrl(instagramUrl),
                    child: Text(
                      '@kitapchesmesi',
                      style: TextStyle(
                        color: ConstantsColor.customOrageColor,
                        fontFamily: 'Poppins-regular',
                        fontWeight: FontWeight.bold,
                        fontSize: 12.sp,
                      ),
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
