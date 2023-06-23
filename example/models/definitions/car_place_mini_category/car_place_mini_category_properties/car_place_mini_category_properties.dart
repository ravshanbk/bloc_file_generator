import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';

class CarPlaceMiniCategoryProperties {
  final IsComparisonClass id;
  final ContactNameClass name;

  CarPlaceMiniCategoryProperties({
    required this.id,
    required this.name,
  });

  factory CarPlaceMiniCategoryProperties.fromJson(Map<String, dynamic> json) => CarPlaceMiniCategoryProperties(
        id: IsComparisonClass.fromJson(json['id']),
        name: ContactNameClass.fromJson(json['name']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'name': name.toJson(),
      };
}
