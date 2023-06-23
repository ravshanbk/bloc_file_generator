import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';

class ColorProperties {
  final IsComparisonClass id;
  final ContactNameClass name;
  final ContactNameClass hexCode;

  ColorProperties({
    required this.id,
    required this.name,
    required this.hexCode,
  });

  factory ColorProperties.fromJson(Map<String, dynamic> json) => ColorProperties(
        id: IsComparisonClass.fromJson(json['id']),
        name: ContactNameClass.fromJson(json['name']),
        hexCode: ContactNameClass.fromJson(json['hex_code']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'name': name.toJson(),
        'hex_code': hexCode.toJson(),
      };
}
