// cubit/category_cubit.dart

import 'package:bloc/bloc.dart';
import 'package:book_store/features/category/presentation/cubit/sub_category_state.dart';
import '../../data/datasources/datasource.dart';
import 'state.dart';

class SubCategoryCubit extends Cubit<SubCategoryState> {
  final CategoryRemoteDataSource remoteDataSource;

  SubCategoryCubit({required this.remoteDataSource})
      : super(SubCategoryInitial());

  Future<void> fetchSubcategories() async {
    try {
      emit(SubCategoryLoading());

      final subcategories = await remoteDataSource.fetchSubcategories();
      emit(SubCategoryLoaded(subcategories));
    } catch (e) {
      emit(SubCategoryError('Failed to fetch categories'));
    }
  }
}
