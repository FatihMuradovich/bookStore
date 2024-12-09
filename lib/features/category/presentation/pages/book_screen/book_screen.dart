import 'package:book_store/common/blocs/nav_bar_cubit/nav_bar_cubit.dart';
import 'package:book_store/common/constants.dart';
import 'package:book_store/common/utils.dart';
import 'package:book_store/common/widgets/product.dart/product_item_vertical.dart';
import 'package:book_store/features/category/presentation/pages/book_screen/filter_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:book_store/features/category/presentation/pages/book_screen/widgets/custom_bottom_appbar.dart';

class BookScreen extends StatelessWidget {
  const BookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 1,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: ConstantsIcons.leftChevron),
        automaticallyImplyLeading: false,
        title: Text(
          'Haýsy kategoriýa',
          style: TextStyle(
            fontFamily: 'Poppins-regular',
            fontSize: 18.sp,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size(double.infinity, 50),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: RichText(
                    text: TextSpan(
                      text: 'Jemi: ',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins-regular',
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp),
                      children: [
                        TextSpan(
                          text: '46 kitap',
                          style: TextStyle(
                            fontFamily: 'Poppins-regular',
                            fontWeight: FontWeight.normal,
                            fontSize: 14.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: CustomBottomAppBar(
                  title: 'Filtr',
                  icon: const Icon(FluentSystemIcons.ic_fluent_filter_filled),
                  onTap: () {
                    context.read<NavBarCubit>().hideNavBar();
                    Navigator.of(context)
                        .push(
                      createFadeRoute(
                        FilterScreen(),
                      ),
                    )
                        .then((_) {
                      context.read<NavBarCubit>().showNavBar();
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: 6,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 220.h,
          ),
          itemBuilder: (context, index) {
            return const ProductItemVertical();
          },
        ),
      ),
    );
  }
}
