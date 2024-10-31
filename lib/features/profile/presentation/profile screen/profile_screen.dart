import 'package:book_store/features/profile/presentation/profile%20screen/widgets/language_dialog.dart';
import 'package:book_store/features/profile/presentation/profile%20screen/widgets/log_out_dialog.dart';
import 'package:book_store/features/profile/presentation/profile%20screen/widgets/profile_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leadingWidth: 300,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Profile name',
                style: TextStyle(
                  fontFamily: 'Poppins-regular',
                  fontWeight: FontWeight.bold,
                  fontSize: 16.sp,
                ),
              ),
              Text(
                'muradovichfatih@gmail.com',
                style: TextStyle(
                  fontFamily: 'Poppins-regular',
                  fontSize: 14.sp,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ProfileItem(
                ontap: () {},
                title: 'Profil',
                icon: 'assets/icons/person_light.png',
              ),
              ProfileItem(
                ontap: () => Navigator.pushNamed(context, '/myOrders'),
                title: 'Sargytlarym',
                icon: 'assets/icons/cart_light.png',
              ),
              ProfileItem(
                ontap: () => Navigator.pushNamed(context, '/adress'),
                icon: 'assets/icons/location_light.png',
                title: 'Salgylarym',
              ),
              ProfileItem(
                ontap: () => Navigator.pushNamed(context, '/aboutUs'),
                icon: 'assets/icons/info_light.png',
                title: 'Biz barada',
              ),
              ProfileItem(
                ontap: () => Navigator.pushNamed(context, '/message'),
                icon: 'assets/icons/comment_light.png',
                title: 'Habarlaşmak',
              ),
              ProfileItem(
                ontap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return const LanguageDialog();
                    },
                  );
                },
                icon: 'assets/icons/globe_light.png',
                title: 'Dil çalyşmak',
              ),
              ProfileItem(
                ontap: () => Navigator.pushNamed(context, '/rule'),
                icon: 'assets/icons/rule_light.png',
                title: 'Eltip bermek we töleg',
              ),
              ProfileItem(
                ontap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return const LogOutDialog();
                    },
                  );
                },
                icon: 'assets/icons/sign_light.png',
                title: 'Ulgamdan çykmak',
              ),
              const SizedBox(
                height: 10,
              ),
              // Text(
              //   'Wersiýa',
              //   style: TextStyle(
              //     fontSize: 14.sp,
              //     fontFamily: 'Poppins-regular',
              //   ),
              //const TextStyle(fontFamily: 'Quicksand', fontSize: 16),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
