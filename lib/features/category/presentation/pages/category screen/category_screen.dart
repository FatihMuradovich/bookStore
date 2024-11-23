// example widget (category_screen.dart)

import 'package:book_store/common/constants.dart';
import 'package:book_store/features/category/presentation/pages/subcategory_screen/subcategory_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../cubit/cubit.dart';
import '../../cubit/state.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Kategoriýalar'),
      ),
      body: BlocBuilder<CategoryCubit, CategoryState>(
        builder: (context, state) {
          if (state is CategoryLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is CategoryLoaded) {
            return ListView.builder(
              padding: const EdgeInsets.all(5),
              itemCount: state.categories.length,
              itemBuilder: (context, index) {
                final category = state.categories[index];
                return GestureDetector(
                  onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>const SubcategoryScreen()));
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
                            category.name,
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


// ListTile(
//                   title: Text(category.name),
//                   subtitle: Text(category.description ?? ''),
//                 )