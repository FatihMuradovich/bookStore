import 'package:flutter/material.dart';

class RulesScreen extends StatelessWidget {
  const RulesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Eltip bermek we töleg',
          style: TextStyle(
            fontFamily: 'Poppins-regular',
          ),
        ),
      ),
    );
  }
}
