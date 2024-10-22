import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class CouponScreen extends StatelessWidget {
  const CouponScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(FluentSystemIcons.ic_fluent_chevron_left_filled),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Coupon screen'),
      ),
    );
  }
}
