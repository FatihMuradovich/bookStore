// cubit/category_cubit.dart

import 'package:bloc/bloc.dart';
import '../../data/datasources/datasource.dart';
import 'state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  final CategoryRemoteDataSource remoteDataSource;

  CategoryCubit({required this.remoteDataSource}) : super(CategoryInitial());

  Future<void> fetchCategories() async {
    try {
      emit(CategoryLoading());

      final categories = await remoteDataSource.fetchCategories();
      emit(CategoryLoaded(categories));
    } catch (e) {
      emit(CategoryError('Failed to fetch categories'));
    }
  }
}
