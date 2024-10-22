import 'package:book_store/common/custom_banner.dart';
import 'package:book_store/features/home%20screen/widgets/home_screen_list_view.dart';
import 'package:book_store/features/home%20screen/widgets/search_text_field.dart';
import 'package:flutter/material.dart';

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
        centerTitle: false,
        title: Image.asset(
          height: 90,
          width: 90,
          'assets/logo/logo 1.PNG',
        ),
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, '/notification'),
            icon: const Icon(
              Icons.notifications,
              color: Colors.white,
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
            const SizedBox(
              height: 10,
            ),
            // Banner
            const CustomBanner(),
            const SizedBox(
              height: 15,
            ),
            // Taze gelen kitaplar
            HomeScreenCategory(
              text: 'Täze gelen kitaplar',
              nextPage: () {},
            ),

            const Padding(
              padding: EdgeInsets.only(top: 15, bottom: 15),
              child: SizedBox(
                height: 260,
                child: HomeScreenListView(),
              ),
            ),

            // Arzanladys kitaplar
            HomeScreenCategory(
              text: 'Arzanladyşdaky kitaplar',
              nextPage: () {},
            ),

            const Padding(
              padding: EdgeInsets.only(top: 15, bottom: 15),
              child: SizedBox(
                height: 260,
                child: HomeScreenListView(),
              ),
            ),

            // Güýmenjeler
            HomeScreenCategory(
              text: 'Güýmenjeler',
              nextPage: () {},
            ),

            const Padding(
              padding: EdgeInsets.only(top: 15, bottom: 15),
              child: SizedBox(
                height: 260,
                child: HomeScreenListView(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
