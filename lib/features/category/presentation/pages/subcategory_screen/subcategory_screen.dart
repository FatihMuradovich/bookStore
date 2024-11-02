import 'package:book_store/common/constants.dart';
import 'package:book_store/features/category/presentation/cubit/cubit.dart';
import 'package:book_store/features/category/presentation/cubit/state.dart';
import 'package:book_store/features/category/presentation/cubit/sub_category_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubcategoryScreen extends StatelessWidget {
  const SubcategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: ConstantsIcons.leftChevron),
        title: Text(
          'Category name',
          style: TextStyle(
            fontFamily: 'Poppins-regular',
            fontSize: 18.sp,
          ),
        ),
      ),
      body: BlocBuilder<CategoryCubit, CategoryState>(
        builder: (context, state) {
          if (state is SubCategoryLoaded) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is SubCategoryLoaded) {
            return ListView.builder(
              itemCount: 10,
              padding: const EdgeInsets.all(5),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/bookscreen');
                  },
                  child: Card(
                    color: Colors.grey[100],
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Subcategory',
                            style: TextStyle(
                              fontFamily: 'Poppins-regular',
                              fontSize: 12.sp,
                            ),
                          ),
                          ConstantsIcons.rightChevron
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          } else if (state is CategoryError) {
            return Center(child: Text(state.message));
          }
          return const Center(
              child: Text('Press the button to load categories.'));
        },
      ),
    );
  }
}
