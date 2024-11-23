import 'package:book_store/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderToContinue extends StatelessWidget {
  const OrderToContinue({super.key});

  @override
  Widget build(BuildContext context) {
    final TextStyle type =
        TextStyle(fontFamily: 'Poppins-regular', fontSize: 12.sp);
    final texts = [
      'Sargyt ID',
      'Sene:',
      'Haryt sany:',
      'Jemi:',
      'Status:',
    ];

    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Card(
          color: Colors.grey[50],
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: texts.map(
                      (e) {
                        return Text(
                          e,
                          style: type,
                        );
                      },
                    ).toList(),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    text('0001'),
                    text('24.04.2024'),
                    text('2'),
                    text('170 TMT'),
                    text('Kabul edildi'),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Text text(String a) {
    return Text(
      a,
      style: TextStyle(
        fontFamily: 'Poppins-regular',
        fontSize: 12.sp,
        color: ConstantsColor.customOrageColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
