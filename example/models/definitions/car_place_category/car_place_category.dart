import 'car_place_category_properties/car_place_category_properties.dart';

class CarPlaceCategory {
  final List<String> required;
  final String type;
  final CarPlaceCategoryProperties properties;

  CarPlaceCategory({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory CarPlaceCategory.fromJson(Map<String, dynamic> json) => CarPlaceCategory(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: CarPlaceCategoryProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
