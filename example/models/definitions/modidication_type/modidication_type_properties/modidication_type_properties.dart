import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';

class ModificationTypeProperties {
  final IsComparisonClass id;
  final ContactNameClass power;
  final ContactNameClass volume;

  ModificationTypeProperties({
    required this.id,
    required this.power,
    required this.volume,
  });

  factory ModificationTypeProperties.fromJson(Map<String, dynamic> json) => ModificationTypeProperties(
        id: IsComparisonClass.fromJson(json['id']),
        power: ContactNameClass.fromJson(json['power']),
        volume: ContactNameClass.fromJson(json['volume']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'power': power.toJson(),
        'volume': volume.toJson(),
      };
}
