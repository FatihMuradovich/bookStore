import 'package:book_store/app/dio_settings.dart';
import 'package:book_store/features/category/data/models/subcategories.dart';
import '../models/category.dart';

class CategoryRemoteDataSource {
  final DioSetting dioSetting;

  CategoryRemoteDataSource({required this.dioSetting});

  Future<List<CategoryModel>> fetchCategories() async {
    try {
      final response = await dioSetting.dio.get('/categories/');
      final List<dynamic> data = response.data;

      return data.map((item) => CategoryModel.fromJson(item)).toList();
    } catch (e) {
      throw Exception('Failed to fetch categories');
    }
  }

  Future<List<SubCategoryModel>> fetchSubcategories() async {
    try {
      final response = await dioSetting.dio.get('/subcategories/');
      final List<dynamic> data = response.data;

      return data.map((item) => SubCategoryModel.fromJson(item)).toList();
    } catch (e) {
      throw Exception('Failed to fetch categories');
    }
  }
}
