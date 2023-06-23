import '../../swagger_model.dart';
import 'product_category_properties/product_category_properties.dart';

class ProductCategory {
  final List<String> required;
  final String type;
  final ProductCategoryProperties properties;

  ProductCategory({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory ProductCategory.fromJson(Map<String, dynamic> json) => ProductCategory(
    required: List<String>.from(json['required'].map((x) => x)),
    type: json['type'],
    properties: ProductCategoryProperties.fromJson(json['properties']),
  );

  Map<String, dynamic> toJson() => {
    'required': List<dynamic>.from(required.map((x) => x)),
    'type': type,
    'properties': properties.toJson(),
  };
}
