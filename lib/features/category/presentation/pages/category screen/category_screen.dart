// example widget (category_screen.dart)

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/datasources/datasource.dart';
import '../../cubit/cubit.dart';
import '../../cubit/state.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
      ),
      body: BlocProvider(
        create: (context) => CategoryCubit(
          remoteDataSource: context.read<CategoryRemoteDataSource>(),
        )..fetchCategories(),
        child: BlocBuilder<CategoryCubit, CategoryState>(
          builder: (context, state) {
            if (state is CategoryLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is CategoryLoaded) {
              return ListView.builder(
                itemCount: state.categories.length,
                itemBuilder: (context, index) {
                  final category = state.categories[index];
                  return ListTile(
                    title: Text(category.name),
                    subtitle: Text(category.description ?? ''),
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
      ),
    );
  }
}
