import 'package:book_store/features/category/data/models/subcategories.dart';
import 'package:equatable/equatable.dart';

abstract class SubCategoryState extends Equatable {
  const SubCategoryState();

  @override
  List<Object?> get props => [];
}

class SubCategoryInitial extends SubCategoryState {}

class SubCategoryLoading extends SubCategoryState {}

class SubCategoryLoaded extends SubCategoryState {
  final List<SubCategoryModel> subcategories;

  const SubCategoryLoaded(this.subcategories);

  @override
  List<Object?> get props => [subcategories];
}

class SubCategoryError extends SubCategoryState {
  final String message;

  const SubCategoryError(this.message);

  @override
  List<Object?> get props => [message];
}
