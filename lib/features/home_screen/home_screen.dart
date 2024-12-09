import 'package:book_store/app/localization/localization.dart';
import 'package:book_store/common/custom_banner.dart';
import 'package:book_store/common/utils.dart';
import 'package:book_store/features/home_screen/widgets/home_screen_list_view.dart';
import 'package:book_store/features/home_screen/widgets/search_text_field.dart';
import 'package:book_store/features/notifications/presentation/notification/notification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/home_screen_category.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentSlide = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFFff9900),
        surfaceTintColor: const Color(0xFFff9900),
        shadowColor: Colors.white,
        centerTitle: false,
        title: Image.asset(
          width: 90.w,
          'assets/logo/logo 1.PNG',
        ),
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context)
                .push(createFadeRoute(const NotificationScreen())),
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
              size: 20.h,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // TextField
            const Padding(
              padding: EdgeInsets.only(top: 15, left: 12, right: 12),
              child: SearchTextField(),
            ),
            SizedBox(
              height: 10.h,
            ),
            // Banner
            const CustomBanner(),
            SizedBox(
              height: 15.h,
            ),
            // Taze gelen kitaplar
            HomeScreenCategory(
              text: context.l10n.newBooks,
              nextPage: () {},
            ),

            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              child: SizedBox(
                height: 225.h,
                child: const HomeScreenListView(),
              ),
            ),

            // Arzanladys kitaplar
            HomeScreenCategory(
              text: context.l10n.discountBook,
              nextPage: () {},
            ),

            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              child: SizedBox(
                height: 225.h,
                child: const HomeScreenListView(),
              ),
            ),

            // Güýmenjeler
            HomeScreenCategory(
              text: 'Güýmenjeler',
              nextPage: () {},
            ),

            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              child: SizedBox(
                height: 225.h,
                child: const HomeScreenListView(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
