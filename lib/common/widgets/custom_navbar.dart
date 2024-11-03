import 'package:book_store/common/constants.dart';
import 'package:book_store/features/cart/cart%20screen/cart_screen.dart';
import 'package:book_store/features/category/presentation/pages/category%20screen/category_screen.dart';
import 'package:book_store/features/favorites/presentation/favorite%20screen/favorite_screen.dart';
import 'package:book_store/features/home%20screen/home_screen.dart';
import 'package:book_store/features/profile/presentation/profile%20screen/profile_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

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





//  Scaffold(
//       body: PersistentTabView(
//         context,
//         screens: navBody(),
//         items: navBarItem(),
//         navBarStyle: NavBarStyle.style9,
//       ),
//     );



//  List<PersistentBottomNavBarItem> navBarItem() {
//     return [
//       PersistentBottomNavBarItem(
//         activeColorPrimary: ConstantsColor.customBlueColor,
//         inactiveColorPrimary: Colors.white,
//         icon: const Icon(
//           FluentSystemIcons.ic_fluent_home_filled,
//         ),
//         title: 'Baş sahypa',
//       ),
//       PersistentBottomNavBarItem(
//         activeColorPrimary: ConstantsColor.customBlueColor,
//         inactiveColorPrimary: Colors.white,
//         icon: const Icon(
//           FluentSystemIcons.ic_fluent_home_filled,
//         ),
//         title: 'Baş sahypa',
//       ),
//       PersistentBottomNavBarItem(
//         activeColorPrimary: ConstantsColor.customBlueColor,
//         inactiveColorPrimary: Colors.white,
//         icon: const Icon(
//           FluentSystemIcons.ic_fluent_home_filled,
//         ),
//         title: 'Baş sahypa',
//       ),
//       PersistentBottomNavBarItem(
//         activeColorPrimary: ConstantsColor.customBlueColor,
//         inactiveColorPrimary: Colors.white,
//         icon: const Icon(
//           FluentSystemIcons.ic_fluent_home_filled,
//         ),
//         title: 'Baş sahypa',
//       ),
//       PersistentBottomNavBarItem(
//         activeColorPrimary: ConstantsColor.customBlueColor,
//         inactiveColorPrimary: Colors.white,
//         icon: const Icon(
//           FluentSystemIcons.ic_fluent_home_filled,
//         ),
//         title: 'Baş sahypa',
//       ),
//     ];
//   }