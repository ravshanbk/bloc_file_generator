import '../../../swagger_model.dart';
import 'contact_name_class/contact_name_class.dart';
import 'is_camparison_class/is_camparison_class.dart';

class CarPlaceCategoryProperties {
  final IsComparisonClass id;
  final ContactNameClass name;
  final IsComparisonClass carPlaceCount;

  CarPlaceCategoryProperties({
    required this.id,
    required this.name,
    required this.carPlaceCount,
  });

  factory CarPlaceCategoryProperties.fromJson(Map<String, dynamic> json) => CarPlaceCategoryProperties(
        id: IsComparisonClass.fromJson(json['id']),
        name: ContactNameClass.fromJson(json['name']),
        carPlaceCount: IsComparisonClass.fromJson(json['car_place_count']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'name': name.toJson(),
        'car_place_count': carPlaceCount.toJson(),
      };
}
