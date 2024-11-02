class SubCategoryModel {
  final int id;
  final String name;
  final String? description;
  final int category;

  SubCategoryModel(
      {required this.id,
      required this.name,
      this.description,
      required this.category});

  factory SubCategoryModel.fromJson(Map<String, dynamic> json) {
    return SubCategoryModel(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        category: json['category']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'category': category,
    };
  }
}
