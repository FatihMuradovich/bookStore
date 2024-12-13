import 'package:book_store/app/localization/localization.dart';
import 'package:book_store/common/utils.dart';
import 'package:book_store/features/auth/presentation/log_in/log_in.dart';
import 'package:book_store/features/profile/presentation/profile_screen/about_us/about_us.dart';
import 'package:book_store/features/profile/presentation/profile_screen/message/message.dart';
import 'package:book_store/features/profile/presentation/profile_screen/my_orders/my_orders.dart';
import 'package:book_store/features/profile/presentation/profile_screen/rules/rules_screen.dart';
import 'package:book_store/features/profile/presentation/profile_screen/widgets/language_dialog.dart';
import 'package:book_store/features/profile/presentation/profile_screen/widgets/profile_item.dart';
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
        surfaceTintColor: Colors.white,
        shadowColor: Colors.white,
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
                ontap: () => Navigator.of(context)
                    .push(createFadeRoute(const LogInScreen())),
                //ontap: () => Navigator.pushNamed(context, '/logIn'),
                title: context.l10n.settingsProfil,
                icon: 'assets/icons/person_light.png',
              ),
              ProfileItem(
                ontap: () => Navigator.of(context)
                    .push(createFadeRoute(const MyOrdersScreen())),
                //ontap: () => Navigator.pushNamed(context, '/myOrder'),
                title: context.l10n.myOrders,
                icon: 'assets/icons/cart_light.png',
              ),
              ProfileItem(
                ontap: () => Navigator.of(context)
                    .push(createFadeRoute(const AboutUsScreen())),
                icon: 'assets/icons/info_light.png',
                title: context.l10n.aboutUs,
              ),
              ProfileItem(
                ontap: () => Navigator.of(context)
                    .push(createFadeRoute(const MessageScreen())),
                icon: 'assets/icons/comment_light.png',
                title: context.l10n.message,
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
                title: context.l10n.language,
              ),
              ProfileItem(
                ontap: () => Navigator.of(context)
                    .push(createFadeRoute(const RulesScreen())),
                icon: 'assets/icons/rule_light.png',
                title: context.l10n.rules,
              ),
              // ProfileItem(
              //   ontap: () {},
              //   icon: 'assets/icons/sign_light.png',
              //   title: 'Ulgamdan çykmak',
              // ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
