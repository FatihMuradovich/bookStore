import 'package:book_store/app/localization/localization.dart';
import 'package:book_store/common/constants.dart';
import 'package:book_store/features/book_detail/presentation/widgets/auhtor_other_book.dart';
import 'package:book_store/features/book_detail/presentation/widgets/book_detail_custom_bottom.dart';
import 'package:book_store/features/book_detail/presentation/widgets/kitap_ozellik.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetail extends StatelessWidget {
  const BookDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: const BookDetailCustomBottom(),
      appBar: AppBar(
        backgroundColor: Colors.white,
       //surfaceTintColor: ConstantsColor.customBlueColor,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: ConstantsIcons.leftChevron,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 20,
            ),
            child: GestureDetector(
              onTap: () {},
              child: ConstantsIcons.favorite,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.red,
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: Image.asset(
                  'assets/books/1.jpg',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
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
                  const SizedBox(
                    height: 10,
                  ),
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
          ],
        ),
      ),
    );
  }
}

// Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         'Ürün Soru ve Cevaplari',
//                         style: TextStyle(
//                           fontSize: 16.sp,
//                           fontFamily: 'Poppins-regular',
//                           fontWeight: FontWeight.w800,
//                         ),
//                       ),
//                       GestureDetector(
//                         onTap: () {},
//                         child: GestureDetector(
//                             onTap: () {}, child: ConstantsIcons.rightChevron),
//                       ),
//                     ],
//                   ),
//                   const UrunSoruCevaplari(),
//                   Divider(
//                     height: 30.h,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         'Ürün değerlendirme',
//                         style: TextStyle(
//                           fontSize: 16.sp,
//                           fontFamily: 'Poppins-regular',
//                           fontWeight: FontWeight.w800,
//                         ),
//                       ),
//                       GestureDetector(
//                         onTap: () {},
//                         child: GestureDetector(
//                             onTap: () {}, child: ConstantsIcons.rightChevron),
//                       ),
//                     ],
//                   ),
//                   const UrunDegerlendirme(),
//                   SizedBox(
//                     height: 20.h,
//                   ),

// CustomScrollView(
//         slivers: [
//           const CustomAppBar(),
//           SliverToBoxAdapter(
//             child: Padding(
//               padding: const EdgeInsets.only(
//                   top: 10, left: 10, right: 10, bottom: 40),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Expanded(
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               'Dorian Gray\'in Portresi',
//                               maxLines: 1,
//                               style: TextStyle(
//                                 fontFamily: 'Poppins-black',
//                                 fontSize: 16.sp,
//                                 overflow: TextOverflow.ellipsis,
//                               ),
//                             ),
//                             Text(
//                               'Oscar Wilde',
//                               style: TextStyle(
//                                 fontFamily: 'Poppins-regular',
//                                 fontSize: 14.sp,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),

//                   SizedBox(
//                     height: 20.h,
//                   ),

//                   Text(
//                     context.l10n.description,
//                     style: TextStyle(
//                         fontSize: 16.sp,
//                         fontFamily: 'Poppins-regular',
//                         fontWeight: FontWeight.w800),
//                   ),
//                   SizedBox(
//                     height: 10.h,
//                   ),
//                   Text(
//                     style: TextStyle(
//                         fontFamily: 'Poppins-regular',
//                         color: Colors.black54,
//                         fontSize: 12.sp),
//                     "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
//                   ),
//                   SizedBox(
//                     height: 20.h,
//                   ),
//                   // kitap ozellikleri
//                   const KitapOzellik(),

//                   SizedBox(
//                     height: 10.h,
//                   ),

//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         context.l10n.auhtorsOtherBook,
//                         style: TextStyle(
//                             fontSize: 16.sp,
//                             fontFamily: 'Poppins-regular',
//                             fontWeight: FontWeight.w800),
//                       ),
//                       GestureDetector(
//                           onTap: () {
//                             // Navigator.push(
//                             //   context,
//                             //   MaterialPageRoute(builder: (context) {
//                             //     return const AuthorBook();
//                             //   }),
//                             // );
//                           },
//                           child: GestureDetector(
//                               onTap: () {},
//                               child: ConstantsIcons.rightChevron)),
//                     ],
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   SizedBox(
//                     height: 220.h,
//                     child: const AuthorOtherBook(),
//                   ),
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
