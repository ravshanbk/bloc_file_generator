import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';

class ProductCategoryProperties {
  final IsComparisonClass id;
  final ContactNameClass name;
  final IsComparisonClass productsCount;

  ProductCategoryProperties({
    required this.id,
    required this.name,
    required this.productsCount,
  });

  factory ProductCategoryProperties.fromJson(Map<String, dynamic> json) => ProductCategoryProperties(
        id: IsComparisonClass.fromJson(json['id']),
        name: ContactNameClass.fromJson(json['name']),
        productsCount: IsComparisonClass.fromJson(json['products_count']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'name': name.toJson(),
        'products_count': productsCount.toJson(),
      };
}
