import 'package:book_store/common/constants.dart';
import 'package:book_store/features/profile%20screen/adress%20/widgets/add_adress_button.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdressScreen extends StatelessWidget {
  const AdressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: ConstantsIcons.leftChevron),
        title: Text(
          'Salgylarym',
          style: TextStyle(
            fontFamily: 'Poppins-regular',
            fontSize: 18.sp,
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
                size: 45.h,
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            'Hasaba alnan salgyňyz ýok.',
            style: TextStyle(
                color: ConstantsColor.customBlueColor,
                fontFamily: 'Poppins-regular',
                fontWeight: FontWeight.bold,
                fontSize: 14.sp),
          ),
          SizedBox(
            height: 30.h,
          ),
          const AddAdressButton(),
        ],
      ),
    );
  }
}
