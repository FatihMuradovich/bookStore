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
                  style: Constants.kitapOzellik,
                ),
                Text(
                  'KTCHP_1001',
                  style: Constants.kitapOzellik,
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
                  style: Constants.kitapOzellik,
                ),
                Text(
                  'Türkiye iş bankası',
                  style: Constants.kitapOzellik,
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
                  style: Constants.kitapOzellik,
                ),
                Text(
                  'Türk dilinde',
                  style: Constants.kitapOzellik,
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
                  style: Constants.kitapOzellik,
                ),
                Text(
                  'Gaty',
                  style: Constants.kitapOzellik,
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
                  style: Constants.kitapOzellik,
                ),
                Text(
                  '2002',
                  style: Constants.kitapOzellik,
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
                  style: Constants.kitapOzellik,
                ),
                Text(
                  '240',
                  style: Constants.kitapOzellik,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
