import 'package:book_store/common/constants.dart';
import 'package:book_store/features/profile%20screen/adress%20/widgets/add_adress_button.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AdressScreen extends StatelessWidget {
  const AdressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'Salgylarym',
            style: TextStyle(
              fontFamily: 'Poppins-regular',
            ),
          ),
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AddAdressButton(),
          ],
        ));
  }
}
