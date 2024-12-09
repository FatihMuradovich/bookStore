import 'package:book_store/app/localization/localization.dart';
import 'package:book_store/common/blocs/nav_bar_cubit/nav_bar_cubit.dart';
import 'package:book_store/common/constants.dart';
import 'package:book_store/features/cart/cart%20screen/cart_screen.dart';
import 'package:book_store/features/category/presentation/pages/category%20screen/category_screen.dart';
import 'package:book_store/features/favorites/presentation/favorite%20screen/favorite_screen.dart';
import 'package:book_store/features/home_screen/home_screen.dart';
import 'package:book_store/features/profile/presentation/profile_screen/profile_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  int navBarIndex = 0;

  List<Widget> _navBody() {
    return [
      const HomeScreen(),
      const CategoryScreen(),
      const FavoriteScreen(),
      const CartScreen(),
      const ProfileScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> navBarItem() {
    return [
      PersistentBottomNavBarItem(
          iconSize: 22,
          activeColorPrimary: ConstantsColor.customBlueColor,
          activeColorSecondary: Colors.white,
          icon: const Icon(
            FluentSystemIcons.ic_fluent_home_filled,
          ),
          title: context.l10n.homeScreen,
          textStyle: const TextStyle(
              fontFamily: 'Poppins-regular', fontWeight: FontWeight.bold)),
      PersistentBottomNavBarItem(
          iconSize: 22,
          activeColorPrimary: ConstantsColor.customBlueColor,
          activeColorSecondary: Colors.white,
          icon: const Icon(
            FluentSystemIcons.ic_fluent_glance_filled,
          ),
          title: context.l10n.categories,
          textStyle: const TextStyle(
              fontFamily: 'Poppins-regular', fontWeight: FontWeight.bold)),
      PersistentBottomNavBarItem(
          iconSize: 22,
          activeColorPrimary: ConstantsColor.customBlueColor,
          activeColorSecondary: Colors.white,
          icon: const Icon(
            FluentSystemIcons.ic_fluent_heart_filled,
          ),
          title: context.l10n.favorites,
          textStyle: const TextStyle(
              fontFamily: 'Poppins-regular', fontWeight: FontWeight.bold)),
      PersistentBottomNavBarItem(
          iconSize: 22,
          activeColorPrimary: ConstantsColor.customBlueColor,
          activeColorSecondary: Colors.white,
          icon: const Icon(
            Icons.shopping_cart,
          ),
          title: context.l10n.cart,
          textStyle: const TextStyle(
              fontFamily: 'Poppins-regular', fontWeight: FontWeight.bold)),
      PersistentBottomNavBarItem(
          iconSize: 22,
          activeColorPrimary: ConstantsColor.customBlueColor,
          activeColorSecondary: Colors.white,
          icon: const Icon(
            FluentSystemIcons.ic_fluent_person_filled,
          ),
          title: context.l10n.profil,
          textStyle: const TextStyle(
              fontFamily: 'Poppins-regular', fontWeight: FontWeight.bold)),
    ];
  }

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavBarCubit, bool>(
      builder: (context, isVisible) {
        return PersistentTabView(
          context,
          controller: _controller,
          screens: _navBody(),
          items: navBarItem(),
          isVisible: isVisible,
          confineToSafeArea: true,
          backgroundColor: Colors.white,
          handleAndroidBackButtonPress: true,
          resizeToAvoidBottomInset: true,
          stateManagement: true,
          hideNavigationBarWhenKeyboardAppears: true,
          navBarStyle: NavBarStyle.style10,
          key: navigatorKey,
        );
      },
    );
  }
}












// Scaffold(
//       body: navBody[navBarIndex],
//       bottomNavigationBar: Container(
//         color: Colors.white,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//           child: GNav(
//             selectedIndex: navBarIndex,
//             // onTabChange: pageChange(),
//             onTabChange: (index) {
//               setState(() {
//                 navBarIndex = index;
//               });
//             },
//             backgroundColor: Colors.white,
//             activeColor: Colors.white,
//             color: ConstantsColor.customBlueColor,
//             tabBackgroundColor: ConstantsColor.customBlueColor,
//             gap: 5,
//             padding: const EdgeInsets.all(6),
//             tabs: const [
//               GButton(
//                 padding: EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
//                 icon: FluentSystemIcons.ic_fluent_home_filled,
//                 iconSize: 20,
//                 text: 'Baş sahypa',
//               ),
//               GButton(
//                 padding: EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
//                 icon: FluentSystemIcons.ic_fluent_glance_filled,
//                 iconSize: 20,
//                 text: 'Kategoriýalar',
//               ),
//               GButton(
//                 padding: EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
//                 icon: FluentSystemIcons.ic_fluent_heart_filled,
//                 iconSize: 20,
//                 text: 'Halanlarym',
//               ),
//               GButton(
//                 padding: EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
//                 icon: Icons.shopping_cart,
//                 iconSize: 20,
//                 text: 'Sebet',
//               ),
//               GButton(
//                 padding: EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
//                 icon: FluentSystemIcons.ic_fluent_person_filled,
//                 iconSize: 20,
//                 text: 'Profil',
//               ),
//             ],
//           ),
//         ),
//       ),
//     );