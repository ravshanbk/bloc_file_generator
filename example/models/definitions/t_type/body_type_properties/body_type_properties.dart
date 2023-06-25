import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';
import '../../working_days/car_place_working_days_properties/currency/currency.dart';

class BodyTypeProperties {
  final IsComparisonClass id;
  final Currency type;
  final IsComparisonClass logo;
  final ContactNameClass typeDisplay;

  BodyTypeProperties({
    required this.id,
    required this.type,
    required this.logo,
    required this.typeDisplay,
  });

  factory BodyTypeProperties.fromJson(Map<String, dynamic> json) => BodyTypeProperties(
        id: IsComparisonClass.fromJson(json['id']),
        type: Currency.fromJson(json['type']),
        logo: IsComparisonClass.fromJson(json['logo']),
        typeDisplay: ContactNameClass.fromJson(json['type_display']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'type': type.toJson(),
        'logo': logo.toJson(),
        'type_display': typeDisplay.toJson(),
      };
}
