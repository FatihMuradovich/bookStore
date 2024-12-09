import 'package:flutter/material.dart';

class CouponScreen extends StatelessWidget {
  const CouponScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Koupon',style: TextStyle(
            fontFamily: 'Poppins-regular',
          ),),
      ),
    );
  }
}
