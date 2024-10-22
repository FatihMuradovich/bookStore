import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Biz barada',
          style: TextStyle(
            fontFamily: 'Poppins-regular',
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
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
                    ),
                  ),
                  Text(
                    '+993 64 77-82-40',
                    style: TextStyle(
                        color: Color(0xFFff9900),
                        fontFamily: 'Poppins-regular',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'E-mail:',
                    style: TextStyle(
                      fontFamily: 'Poppins-regular',
                    ),
                  ),
                  Text(
                    'kitapchesmesi@gmail.com',
                    style: TextStyle(
                        color: Color(0xFFff9900),
                        fontFamily: 'Poppins-regular',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Instagram:',
                    style: TextStyle(
                      fontFamily: 'Poppins-regular',
                    ),
                  ),
                  Text(
                    '@kitapchesmesi',
                    style: TextStyle(
                        color: Color(0xFFff9900),
                        fontFamily: 'Poppins-regular',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'TikTok:',
                    style: TextStyle(
                      fontFamily: 'Poppins-regular',
                    ),
                  ),
                  Text(
                    '@kitapchesmesi',
                    style: TextStyle(
                        color: Color(0xFFff9900),
                        fontFamily: 'Poppins-regular',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Divider(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    height: 60,
                    image: AssetImage('assets/logo/logo 3.PNG'),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Sizi onlaýn kitap dükanymyzda hoş gördük! ',
                style: TextStyle(fontFamily: 'Poppins-regular'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
