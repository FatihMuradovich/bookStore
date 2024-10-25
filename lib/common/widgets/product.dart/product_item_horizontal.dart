import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductItemHorizontal extends StatelessWidget {
  const ProductItemHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0.1,
      child: SizedBox(
        width: 270,
        child: Row(
          children: [
            SizedBox(
              width: 120,
              child: Stack(
                children: [
                  Container(
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade50,
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/books/1.png'),
                      ),
                    ),
                  ),
                  // Positioned(
                  //   top: 4,
                  //   right: 4,
                  //   child: GestureDetector(
                  //     onTap: () {},
                  //     child: Container(
                  //       decoration: const BoxDecoration(
                  //         shape: BoxShape.circle,
                  //         color: Colors.white,
                  //       ),
                  //       child: const Padding(
                  //         padding:
                  //             EdgeInsets.symmetric(vertical: 2, horizontal: 4),
                  //         child: Icon(
                  //           FluentSystemIcons.ic_fluent_heart_regular,
                  //           color: Colors.grey,
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5, top: 5, bottom: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Dorian Grayin Portresi',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontFamily: 'Poppins-black', fontSize: 14),
                  ),
                  const Text(
                    'Oscar Wilde',
                    overflow: TextOverflow.ellipsis,
                    style:
                        TextStyle(fontSize: 12, fontFamily: 'Poppins-regular'),
                  ),
                  RichText(
                    text: const TextSpan(
                      text: '250',
                      style: TextStyle(
                        fontFamily: 'Poppins-black',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFF9E0D),
                      ),
                      children: [
                        TextSpan(
                          text: ' m.',
                          style: TextStyle(
                            // fontFamily: 'Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 158, 13),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          // width: double.infinity,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          decoration: const BoxDecoration(
                            color: Color(0xFFFF9E0D),
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          child: const Center(
                            child: Icon(
                              FontAwesomeIcons.basketShopping,
                              color: Colors.white,
                              size: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
