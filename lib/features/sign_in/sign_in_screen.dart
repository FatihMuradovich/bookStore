import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Agza bol',
          style: TextStyle(fontFamily: 'Poppins-regular'),
        ),
      ),
      body: const SafeArea(
        child: Column(
          children: [
            Text(
              'Welcome back',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Poppins-regular',
                  fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
