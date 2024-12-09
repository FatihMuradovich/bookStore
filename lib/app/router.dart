import 'package:book_store/common/splash_screen.dart';
import 'package:book_store/common/widgets/custom_navbar.dart';
import 'package:book_store/features/auth/presentation/log_in/log_in.dart';
import 'package:book_store/features/auth/presentation/register/register.dart';
import 'package:book_store/features/book_detail/presentation/book_detail.dart';
import 'package:book_store/features/category/presentation/pages/book_screen/book_screen.dart';
import 'package:book_store/features/category/presentation/pages/subcategory_screen/subcategory_screen.dart';
import 'package:book_store/features/favorites/presentation/favorite%20screen/favorite_screen.dart';
import 'package:book_store/features/profile/presentation/profile_screen/about_us/about_us.dart';
import 'package:book_store/features/profile/presentation/profile_screen/adress%20/adress.dart';
import 'package:book_store/features/profile/presentation/profile_screen/adress%20/new_add_adress.dart';
import 'package:book_store/features/profile/presentation/profile_screen/message/message.dart';
import 'package:book_store/features/profile/presentation/profile_screen/my_orders/my_orders.dart';
import 'package:book_store/features/profile/presentation/profile_screen/profile_screen.dart';
import 'package:book_store/features/profile/presentation/profile_screen/rules/rules_screen.dart';
import 'package:flutter/widgets.dart';

import '../features/notifications/presentation/notification/notification_screen.dart';

abstract class RouteGenerator {
  static const splash = '/';
  static const navBar = '/navBar';
  static const bookDetail = '/bookDetail';
  static const favorite = '/favorite';
  static const profile = '/profile';
  static const aboutUs = '/aboutUs';
  static const myOrder = '/myOrder';
  static const adress = '/adress';
  static const cart = '/cart';
  static const subcategory = '/subcategory';
  static const bookScreen = '/bookscreen';
  static const message = '/message';
  static const rules = '/rules';
  static const notification = '/notification';
  static const logIn = '/logIn';
  static const addAdress = '/addAdress';
  static const register = '/register';
  static const orderDetail = '/orderDetail';

  const RouteGenerator._();
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return PageRouteBuilder(
            pageBuilder: (_, __, ___) => const SplashScreen());
      case navBar:
        return PageRouteBuilder(
            pageBuilder: (_, __, ___) => const CustomNavBar());
      case bookDetail:
        return PageRouteBuilder(
            pageBuilder: (_, __, ___) => const BookDetail());
      case favorite:
        return PageRouteBuilder(
            pageBuilder: (_, __, ___) => const FavoriteScreen());
      case profile:
        return PageRouteBuilder(
            pageBuilder: (_, __, ___) => const ProfileScreen());
      case aboutUs:
        return PageRouteBuilder(
            pageBuilder: (_, __, ___) => const AboutUsScreen());
      case myOrder:
        return PageRouteBuilder(
            pageBuilder: (_, __, ___) => const MyOrdersScreen());
      case adress:
        return PageRouteBuilder(
            pageBuilder: (_, __, ___) => const AdressScreen());
      case subcategory:
        return PageRouteBuilder(
            pageBuilder: (_, __, ___) => const SubcategoryScreen());
      case bookScreen:
        return PageRouteBuilder(
            pageBuilder: (_, __, ___) => const BookScreen());
      case message:
        return PageRouteBuilder(
            pageBuilder: (_, __, ___) => const MessageScreen());
      case rules:
        return PageRouteBuilder(
            pageBuilder: (_, __, ___) => const RulesScreen());
      case notification:
        return PageRouteBuilder(
            pageBuilder: (_, __, ___) => const NotificationScreen());
      case logIn:
        return PageRouteBuilder(
            pageBuilder: (_, __, ___) => const LogInScreen());
      case addAdress:
        return PageRouteBuilder(
            pageBuilder: (_, __, ___) => const NewAddAdress());
      case register:
        return PageRouteBuilder(pageBuilder: (_, __, ___) =>  Register());
      // case orderDetail:
      //   return PageRouteBuilder(pageBuilder: (_, __, ___) => const SargydyTassyklamak());
      default:
        throw const RouteException('Route not found');
    }
  }
}

class RouteException implements Exception {
  final String message;
  const RouteException(this.message);
}
