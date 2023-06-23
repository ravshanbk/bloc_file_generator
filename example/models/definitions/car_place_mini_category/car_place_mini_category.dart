import '../../swagger_model.dart';
import 'car_place_mini_category_properties/car_place_mini_category_properties.dart';

class CarPlaceMiniCategory {
  final List<String> required;
  final String type;
  final CarPlaceMiniCategoryProperties properties;

  CarPlaceMiniCategory({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory CarPlaceMiniCategory.fromJson(Map<String, dynamic> json) => CarPlaceMiniCategory(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: CarPlaceMiniCategoryProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
