import 'package:book_store/common/constants.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UrunDegerlendirme extends StatelessWidget {
  const UrunDegerlendirme({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              '3.4',
              style: TextStyle(fontFamily: 'Poppins-regular', fontSize: 14.sp),
            ),
            SizedBox(
              width: 5.w,
            ),
            SizedBox(
              height: 20.h,
              width: 90.w,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Icon(
                    FluentSystemIcons.ic_fluent_star_filled,
                    size: 18.h,
                    color: Colors.amber,
                  );
                },
              ),
            ),
            SizedBox(
              width: 5.w,
            ),
            Text(
              '941 puan',
              style: TextStyle(fontFamily: 'Poppins-regular', fontSize: 14.sp),
            ),
            SizedBox(
              width: 5.w,
            ),
            Text(
              '|',
              style: TextStyle(fontFamily: 'Poppins-regular', fontSize: 14.sp),
            ),
            SizedBox(
              width: 5.w,
            ),
            Text(
              '663 yorum',
              style: TextStyle(fontFamily: 'Poppins-regular', fontSize: 14.sp),
            ),
            SizedBox(
              width: 5.w,
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        SizedBox(
          height: 170.h,
          child: ListView.builder(
            itemCount: 5,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Card(
                elevation: 0,
                color: Colors.grey[100],
                child: SizedBox(
                  height: 170.h,
                  width: 350.w,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 20.h,
                              width: 90.w,
                              child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: 5,
                                itemBuilder: (BuildContext context, int index) {
                                  return Icon(
                                    FluentSystemIcons.ic_fluent_star_filled,
                                    size: 18,
                                    color: ConstantsColor.customOrageColor,
                                  );
                                },
                              ),
                            ),
                            Text(
                              '20.09.2024',
                              style: TextStyle(
                                  fontFamily: 'Poppins-regular',
                                  fontSize: 14.sp),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          'Kullanici adi',
                          style: TextStyle(
                              fontFamily: 'Poppins-regular', fontSize: 14.sp),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                            style: TextStyle(
                                fontFamily: 'Poppins-regular', fontSize: 14.sp),
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printe"),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
