import 'package:book_store/common/constants.dart';
import 'package:book_store/common/widgets/product.dart/product_item_vertical.dart';
import 'package:book_store/features/book%20detail/widgets/custom_app_bar.dart';
import 'package:book_store/features/book%20detail/widgets/kitap_ozellik.dart';
import 'package:book_store/features/book%20detail/widgets/urun_degerlendirme.dart';
import 'package:book_store/features/book%20detail/widgets/urun_soru_cevaplari.dart';
import 'package:flutter/material.dart';

class BookDetail extends StatelessWidget {
  const BookDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                  const Row(
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
                                fontSize: 18,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Text(
                              'Oscar Wilde',
                              style: TextStyle(
                                fontFamily: 'Poppins-regular',
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            RichText(
                              text: const TextSpan(
                                text: '250',
                                style: TextStyle(
                                  fontFamily: 'Poppins-black',
                                  fontSize: 20,
                                  color: Color(0xFFFF9E0D),
                                ),
                                children: [
                                  TextSpan(
                                    text: ' TMT',
                                    style: TextStyle(
                                      // fontFamily: 'Poppins',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 255, 158, 13),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            // Column(
                            //   children: [
                            //     const SizedBox(
                            //       height: 5,
                            //     ),
                            //     (widget.book.sale == null ||
                            //             widget.book.sale == 'null')
                            //         ? const SizedBox.shrink()
                            //         : Text(
                            //             "${widget.book.sale} m.",
                            //             style: const TextStyle(
                            //               fontFamily: 'Poppins',
                            //               fontSize: 14,
                            //               fontWeight: FontWeight.bold,
                            //               color:
                            //                   Color.fromARGB(255, 255, 158, 13),
                            //             ),
                            //           ),
                            //   ],
                            // ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFff9900),
                          ),
                          onPressed: () async {
                            // DbHelper.instance
                            //     .insetBook(widget.book..quantity = 1)
                            //     .then((value) => showTopToast());
                          },
                          child: const Text(
                            'Satyn al',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Poppins-regular',
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  const Text(
                    'Description',
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Poppins-regular',
                        fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    style: TextStyle(
                      fontFamily: 'Poppins-regular',
                      color: Colors.black54,
                    ),
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // kitap ozellikleri
                  const KitapOzellik(),
                  const Divider(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Ürün Soru ve Cevaplari',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Poppins-regular',
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: GestureDetector(
                            onTap: () {}, child: ConstantsIcons.rightChevron),
                      ),
                    ],
                  ),
                  const UrunSoruCevaplari(),
                  const Divider(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Ürün değerlendirme',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Poppins-regular',
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: GestureDetector(
                            onTap: () {}, child: ConstantsIcons.rightChevron),
                      ),
                    ],
                  ),
                  const UrunDegerlendirme(),
                  const SizedBox(
                    height: 20,
                  ),
                  // Author's other books
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Author\'s other books',
                        style: TextStyle(
                            fontSize: 18,
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
                    height: 260,
                    child: ListView.builder(
                      //controller: _controller,
                      shrinkWrap: true,
                      itemExtent: 180,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return const Padding(
                          padding: EdgeInsets.only(right: 5),
                          child: ProductItemVertical(),
                        );
                      },
                      itemCount: 10,
                    ),
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
