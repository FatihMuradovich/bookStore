import 'package:book_store/common/widgets/custom_navbar.dart';
import 'package:book_store/features/book%20detail/book_detail.dart';
import 'package:book_store/common/splash_screen.dart';
import 'package:book_store/features/home%20screen/notification_screen.dart';
import 'package:book_store/features/profile%20screen/about%20us/about_us.dart';
import 'package:book_store/features/profile%20screen/adress%20/adress.dart';
import 'package:book_store/features/profile%20screen/message/message.dart';
import 'package:book_store/features/profile%20screen/my%20orders/my_orders.dart';
import 'package:book_store/features/profile%20screen/rules/rules_screen.dart';
import 'package:book_store/features/sign_in/sign_in_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
      initialRoute: '/',
      routes: {
        '/bookDetail': (context) => const BookDetail(),
        '/notification': (context) => const NotificationScreen(),
        '/myOrders': (context) => const MyOrdersScreen(),
        '/adress': (context) => const AdressScreen(),
        '/aboutUs': (context) => const AboutUsScreen(),
        '/message': (context) => const MessageScreen(),
        '/rule': (context) => const RulesScreen(),
        '/customNavBar': (context) => const CustomNavBar(),
        // '/adress': (context) => const AdressScreen(),
      },
    );
  }
}
