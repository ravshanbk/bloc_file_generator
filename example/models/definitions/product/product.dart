import '../../swagger_model.dart';
import 'product_properties/product_properties.dart';

class Product {
  final List<String> required;
  final String type;
  final ProductProperties properties;

  Product({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: ProductProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
