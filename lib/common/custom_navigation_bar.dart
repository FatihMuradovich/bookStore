import 'package:book_store/features/cart/cart%20screen/cart_screen.dart';
import 'package:book_store/features/category/presentation/pages/category%20screen/category_screen.dart';
import 'package:book_store/features/favorites/presentation/favorite%20screen/favorite_screen.dart';
import 'package:book_store/features/home%20screen/home_screen.dart';
import 'package:book_store/features/profile/presentation/profile%20screen/profile_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
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
      backgroundColor: Colors.white,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: NavigationBar(
          backgroundColor: Colors.white,
          height: 30,
          elevation: 0,
          selectedIndex: navBarIndex,
          onDestinationSelected: (value) {
            setState(() {
              navBarIndex = value;
            });
          },
          destinations: const [
            NavigationDestination(
              icon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label: '',
            ),
            NavigationDestination(
                icon: Icon(FluentSystemIcons.ic_fluent_glance_filled),
                label: ''),
            NavigationDestination(
                icon: Icon(FluentSystemIcons.ic_fluent_heart_filled),
                label: ''),
            NavigationDestination(icon: Icon(Icons.shopping_cart), label: ''),
            NavigationDestination(
                icon: Icon(FluentSystemIcons.ic_fluent_person_filled),
                label: ''),
          ],
        ),
      ),
    );
  }
}
