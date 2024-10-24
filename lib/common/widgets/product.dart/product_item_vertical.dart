import 'package:book_store/features/book%20detail/book_detail.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductItemVertical extends StatelessWidget {
  const ProductItemVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const BookDetail(),
          ),
        );
      },
      child: Card(
        color: Colors.white,
        elevation: 0.1,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 140,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade50,
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/books/1.png'),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 4,
                    left: 4,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xFFff9900),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 2, horizontal: 4),
                        child: Text(
                          '20%',
                          style: TextStyle(
                            fontFamily: 'Poppins-black',
                            color: Colors.white,
                          ),
                        ),
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
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Dorian Grayin Portresi',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontFamily: 'Poppins-black', fontSize: 14),
              ),
              const Text(
                'Oscar Wilde',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 12, fontFamily: 'Poppins-regular'),
              ),
              const SizedBox(
                height: 5,
              ),
              const Row(
                children: [
                  Icon(
                    FluentSystemIcons.ic_fluent_star_filled,
                    size: 16,
                    color: Colors.amber,
                  ),
                  Icon(
                    FluentSystemIcons.ic_fluent_star_filled,
                    size: 16,
                    color: Colors.amber,
                  ),
                  Icon(
                    FluentSystemIcons.ic_fluent_star_regular,
                    size: 16,
                  ),
                  Icon(
                    FluentSystemIcons.ic_fluent_star_regular,
                    size: 16,
                  ),
                  Icon(
                    FluentSystemIcons.ic_fluent_star_regular,
                    size: 16,
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: const TextSpan(
                      text: '250',
                      style: TextStyle(
                        fontFamily: 'Poppins-black',
                        fontSize: 16,
                        color: Color(0xFFFF9E0D),
                      ),
                      children: [
                        TextSpan(
                          text: ' TMT',
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
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(3),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.transparent),
                      child: const Icon(
                        FontAwesomeIcons.basketShopping,
                        size: 18,
                      ),
                    ),
                  ),
                ],
              ),
              // const Spacer(),
              // GestureDetector(
              //   onTap: () {},
              //   child: Container(
              //     padding:
              //         const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              //     decoration: const BoxDecoration(
              //       color: Color(0xFF282846),
              //       borderRadius: BorderRadius.all(
              //         Radius.circular(5),
              //       ),
              //     ),
              //     child: const Center(
              //       child: Icon(
              //         FontAwesomeIcons.basketShopping,
              //         color: Colors.white,
              //         size: 18,
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
