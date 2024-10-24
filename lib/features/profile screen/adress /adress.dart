import 'package:book_store/common/constants.dart';
import 'package:book_store/features/profile%20screen/adress%20/widgets/add_adress_button.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border:
                  Border.all(width: 0.2, color: ConstantsColor.customBlueColor),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Icon(
                FluentSystemIcons.ic_fluent_location_filled,
                color: ConstantsColor.customOrageColor,
                size: 50,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Hasaba alnan salgyňyz ýok.',
            style: TextStyle(
                color: ConstantsColor.customBlueColor,
                fontFamily: 'Poppins-regular',
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          const AddAdressButton(),
        ],
      ),
    );
  }
}
