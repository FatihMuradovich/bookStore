import 'package:book_store/app/localization/localization.dart';
import 'package:book_store/common/constants.dart';
import 'package:book_store/features/book_detail/presentation/widgets/auhtor_other_book.dart';
import 'package:book_store/features/book_detail/presentation/widgets/custom_app_bar.dart';
import 'package:book_store/features/book_detail/presentation/widgets/kitap_ozellik.dart';
import 'package:book_store/features/book_detail/presentation/widgets/urun_degerlendirme.dart';
import 'package:book_store/features/book_detail/presentation/widgets/urun_soru_cevaplari.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetail extends StatelessWidget {
  const BookDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        height: 60.h,
        decoration: BoxDecoration(
          border: Border.all(width: 0.1),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, -10),
              blurRadius: 20,
              color: const Color(0xFFDADADA).withOpacity(0.10),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: RichText(
                  text: TextSpan(
                    text: '250',
                    style: TextStyle(
                      fontFamily: 'Poppins-regular',
                      fontWeight: FontWeight.bold,
                      fontSize: 18.sp,
                      color: const Color(0xFFFF9E0D),
                    ),
                    children: [
                      TextSpan(
                        text: ' TMT',
                        style: TextStyle(
                          fontFamily: 'Poppin-regular',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                          color: ConstantsColor.customOrageColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0.5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: const Color(0xFFFF9E0D),
                    padding: const EdgeInsets.all(10),
                    fixedSize: Size(0, 30.h),
                  ),
                  onPressed: () async {
                    // DbHelper.instance
                    //     .insetBook(widget.book..quantity = 1)
                    //     .then((value) => showTopToast());
                  },
                  child: Text(
                    'Satyn al',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins-regular',
                        fontWeight: FontWeight.w700,
                        fontSize: 14.sp),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          const CustomAppBar(),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 10, left: 10, right: 10, bottom: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dorian Gray\'in Portresi',
                              maxLines: 1,
                              style: TextStyle(
                                fontFamily: 'Poppins-black',
                                fontSize: 16.sp,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Text(
                              'Oscar Wilde',
                              style: TextStyle(
                                fontFamily: 'Poppins-regular',
                                fontSize: 14.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 20.h,
                  ),

                  Text(
                    context.l10n.description,
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontFamily: 'Poppins-regular',
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    style: TextStyle(
                        fontFamily: 'Poppins-regular',
                        color: Colors.black54,
                        fontSize: 12.sp),
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  // kitap ozellikleri
                  const KitapOzellik(),
                  const Divider(
                    height: 30,
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     Text(
                  //       'Ürün Soru ve Cevaplari',
                  //       style: TextStyle(
                  //         fontSize: 16.sp,
                  //         fontFamily: 'Poppins-regular',
                  //         fontWeight: FontWeight.w800,
                  //       ),
                  //     ),
                  //     GestureDetector(
                  //       onTap: () {},
                  //       child: GestureDetector(
                  //           onTap: () {}, child: ConstantsIcons.rightChevron),
                  //     ),
                  //   ],
                  // ),
                  // const UrunSoruCevaplari(),
                  // Divider(
                  //   height: 30.h,
                  // ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     Text(
                  //       'Ürün değerlendirme',
                  //       style: TextStyle(
                  //         fontSize: 16.sp,
                  //         fontFamily: 'Poppins-regular',
                  //         fontWeight: FontWeight.w800,
                  //       ),
                  //     ),
                  //     GestureDetector(
                  //       onTap: () {},
                  //       child: GestureDetector(
                  //           onTap: () {}, child: ConstantsIcons.rightChevron),
                  //     ),
                  //   ],
                  // ),
                  // const UrunDegerlendirme(),
                  // SizedBox(
                  //   height: 20.h,
                  // ),
                  // Author's other books
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        context.l10n.auhtorsOtherBook,
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: 'Poppins-regular',
                            fontWeight: FontWeight.w800),
                      ),
                      GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) {
                            //     return const AuthorBook();
                            //   }),
                            // );
                          },
                          child: GestureDetector(
                              onTap: () {},
                              child: ConstantsIcons.rightChevron)),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 220.h,
                    child: const AuthorOtherBook(),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
