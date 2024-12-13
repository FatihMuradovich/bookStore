import 'package:book_store/common/blocs/nav_bar_cubit/nav_bar_cubit.dart';
import 'package:book_store/common/utils.dart';
import 'package:book_store/features/book_detail/presentation/book_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductItemVertical extends StatelessWidget {
  const ProductItemVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<NavBarCubit>().hideNavBar();
        Navigator.of(context)
            .push(createFadeRoute(const BookDetail()))
            .then((_) {
          // Geri dönüldüğünde navbar tekrar gösterilir
          context.read<NavBarCubit>().showNavBar();
        });
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
                  const AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Image(image: AssetImage('assets/books/1.jpg')),
                  ),
                  // Container(
                  //   height: 120.h,
                  //   decoration: BoxDecoration(
                  //     color: Colors.grey.shade50,
                  //     borderRadius: BorderRadius.circular(10),
                  //     image: const DecorationImage(
                  //       fit: BoxFit.cover,
                  //       image: AssetImage('assets/books/1.png'),
                  //     ),
                  //   ),
                  // ),
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
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 2, horizontal: 4),
                        child: Text(
                          '20%',
                          style: TextStyle(
                              fontFamily: 'Poppins-black',
                              color: Colors.white,
                              fontSize: 12.sp),
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
              SizedBox(
                height: 5.h,
              ),
              Text(
                'Dorian Grayin Portresi',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontFamily: 'Poppins-black', fontSize: 12.sp),
              ),
              Text(
                'Oscar Wilde',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style:
                    TextStyle(fontSize: 10.sp, fontFamily: 'Poppins-regular'),
              ),
              const SizedBox(
                height: 5,
              ),
              // RatingBar(
              //   minRating: 0,
              //   maxRating: 5,
              //   initialRating: 3,
              //   allowHalfRating: true,
              //   ratingWidget: RatingWidget(
              //     full: Icon(FluentSystemIcons.ic_fluent_heart_filled),
              //     half: Icon(FluentSystemIcons.heart),
              //     empty: Icon(FluentSystemIcons.ic_fluent_heart_regular),
              //   ),
              //   onRatingUpdate: (dw) {},
              // ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      text: '250',
                      style: TextStyle(
                        fontFamily: 'Poppins-black',
                        fontSize: 16.sp,
                        color: const Color(0xFFFF9E0D),
                      ),
                      children: [
                        TextSpan(
                          text: ' TMT',
                          style: TextStyle(
                            // fontFamily: 'Poppins',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 255, 158, 13),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(3),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.transparent),
                      child: Icon(
                        FontAwesomeIcons.basketShopping,
                        size: 16.h,
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
