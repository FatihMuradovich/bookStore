import 'package:book_store/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewAddAdress extends StatelessWidget {
  const NewAddAdress({super.key});

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
          child: ConstantsIcons.leftChevron,
        ),
        title: Text(
          'Täze salgy goş',
          style: TextStyle(fontFamily: 'Poppins-regular', fontSize: 18.sp),
        ),
      ),
      body: const Column(
        children: [
          Text(
            'Salgy maglumatlary,',
          ),
          Card()
        ],
      ),
    );
  }
}
