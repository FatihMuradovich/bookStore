import 'package:book_store/common/constants.dart';
import 'package:flutter/material.dart';

class KitapOzellik extends StatelessWidget {
  const KitapOzellik({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFF5F5F5),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Haryt kody',
                  style: ConstantsTextStyle.kitapOzellik,
                ),
                Text(
                  'KTCHP_1001',
                  style: ConstantsTextStyle.kitapOzellik,
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Çaphana',
                  style: ConstantsTextStyle.kitapOzellik,
                ),
                Text(
                  'Türkiye iş bankası',
                  style: ConstantsTextStyle.kitapOzellik,
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Kitabyň dili',
                  style: ConstantsTextStyle.kitapOzellik,
                ),
                Text(
                  'Türk dilinde',
                  style: ConstantsTextStyle.kitapOzellik,
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Book cover',
                  style: ConstantsTextStyle.kitapOzellik,
                ),
                Text(
                  'Gaty',
                  style: ConstantsTextStyle.kitapOzellik,
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Çap ýyly',
                  style: ConstantsTextStyle.kitapOzellik,
                ),
                Text(
                  '2002',
                  style: ConstantsTextStyle.kitapOzellik,
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sahypa',
                  style: ConstantsTextStyle.kitapOzellik,
                ),
                Text(
                  '240',
                  style: ConstantsTextStyle.kitapOzellik,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
