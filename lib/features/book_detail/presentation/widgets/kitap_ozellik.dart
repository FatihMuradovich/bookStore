import 'package:book_store/app/localization/localization.dart';
import 'package:book_store/common/constants.dart';
import 'package:flutter/material.dart';

class KitapOzellik extends StatelessWidget {
  const KitapOzellik({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return 
    Container(
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
                  context.l10n.productCode,
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
                  context.l10n.publisher,
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
                  context.l10n.language,
                  style: ConstantsTextStyle.kitapOzellik,
                ),
                Text(
                  'Türk',
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
                  context.l10n.bookCover,
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
                  context.l10n.publishYear,
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
                  context.l10n.page,
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
