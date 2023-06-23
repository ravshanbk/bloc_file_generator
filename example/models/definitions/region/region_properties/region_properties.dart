import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';

class RegionProperties {
  final IsComparisonClass id;
  final ContactNameClass title;
  final ContactNameClass soato;

  RegionProperties({
    required this.id,
    required this.title,
    required this.soato,
  });

  factory RegionProperties.fromJson(Map<String, dynamic> json) => RegionProperties(
        id: IsComparisonClass.fromJson(json['id']),
        title: ContactNameClass.fromJson(json['title']),
        soato: ContactNameClass.fromJson(json['soato']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'title': title.toJson(),
        'soato': soato.toJson(),
      };
}
