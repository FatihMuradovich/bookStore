import 'package:book_store/common/constants.dart';
import 'package:book_store/features/auth/presentation/widgets/button.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterScreen extends StatefulWidget {
  FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  RangeValues values = const RangeValues(0, 2000);

  @override
  Widget build(BuildContext context) {
    RangeLabels labels = RangeLabels(
      values.start.toString(),
      values.end.toString(),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: ConstantsIcons.xIcon,
        ),
        title: Text(
          'Filtr',
          style: TextStyle(
            fontFamily: 'Poppins-regular',
            fontSize: 18.sp,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Arassala',
              style: TextStyle(
                fontFamily: 'Poppins-regular',
                color: ConstantsColor.customOrageColor,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
        child: Column(
          children: [
            RangeSlider(
              values: values,
              activeColor: ConstantsColor.customOrageColor,
              inactiveColor: ConstantsColor.customBlueColor,
              min: 0,
              max: 2000,
              divisions: 100,
              labels: labels,
              onChanged: (newValue) {
                setState(() {
                  values = newValue;
                });
              },
            ),
            customListTile(
              'Awtor',
              () {},
            ),
            const Divider(
              thickness: 0.5,
            ),
            customListTile(
              'Çaphana',
              () {},
            ),
            const Divider(
              thickness: 0.5,
            ),
            customListTile(
              'Awtor',
              () {},
            ),
            const Divider(
              thickness: 0.5,
            ),
            customListTile(
              'Awtor',
              () {},
            ),
            const Divider(
              thickness: 0.5,
            ),
            ContstantButton(title: 'Kitaplary görkez', onPressed: () {})
          ],
        ),
      ),
    );
  }

  customListTile(
    String title,
    Function() ontap,
  ) {
    return GestureDetector(
      onTap: ontap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
                fontFamily: 'Poppins-regular',
                fontWeight: FontWeight.w400,
                fontSize: 14.sp),
          ),
          Icon(
            FluentSystemIcons.ic_fluent_chevron_right_filled,
            color: ConstantsColor.customOrageColor,
          )
        ],
      ),
    );
  }
}
