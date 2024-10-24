import 'package:book_store/common/constants.dart';
import 'package:book_store/features/cart%20screen/cart_screen.dart';
import 'package:book_store/features/category%20screen/category_screen.dart';
import 'package:book_store/features/favorite%20screen/favorite_screen.dart';
import 'package:book_store/features/home%20screen/home_screen.dart';
import 'package:book_store/features/profile%20screen/profile_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: must_be_immutable
class CustomNavBar extends StatefulWidget {
  const CustomNavBar({
    super.key,
  });

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int navBarIndex = 0;
  List navBody = [
    const HomeScreen(),
    const CategoryScreen(),
    const FavoriteScreen(),
    const CartScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navBody[navBarIndex],
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: GNav(
            selectedIndex: navBarIndex,
            // onTabChange: pageChange(),
            onTabChange: (index) {
              setState(() {
                navBarIndex = index;
              });
            },
            backgroundColor: Colors.white,
            activeColor: Colors.white,
            color: ConstantsColor.customBlueColor,
            tabBackgroundColor: ConstantsColor.customBlueColor,
            gap: 5,
            padding: const EdgeInsets.all(6),
            tabs: const [
              GButton(
                padding: EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
                icon: FluentSystemIcons.ic_fluent_home_filled,
                iconSize: 20,
                text: 'Baş sahypa',
              ),
              GButton(
                padding: EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
                icon: FluentSystemIcons.ic_fluent_glance_filled,
                iconSize: 20,
                text: 'Kategoriýalar',
              ),
              GButton(
                padding: EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
                icon: FluentSystemIcons.ic_fluent_heart_filled,
                iconSize: 20,
                text: 'Halanlarym',
              ),
              GButton(
                padding: EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
                icon: Icons.shopping_cart,
                iconSize: 20,
                text: 'Sebet',
              ),
              GButton(
                padding: EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
                icon: FluentSystemIcons.ic_fluent_person_filled,
                iconSize: 20,
                text: 'Profil',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
