import '../../annoncement_compare/annoncement_compare_properties/year/year.dart';
import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';

class GenerationProperties {
  final IsComparisonClass id;
  final ContactNameClass name;
  final Year yearBegin;
  final Year yearEnd;
  final IsComparisonClass logo;

  GenerationProperties({
    required this.id,
    required this.name,
    required this.yearBegin,
    required this.yearEnd,
    required this.logo,
  });

  factory GenerationProperties.fromJson(Map<String, dynamic> json) => GenerationProperties(
        id: IsComparisonClass.fromJson(json['id']),
        name: ContactNameClass.fromJson(json['name']),
        yearBegin: Year.fromJson(json['year_begin']),
        yearEnd: Year.fromJson(json['year_end']),
        logo: IsComparisonClass.fromJson(json['logo']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'name': name.toJson(),
        'year_begin': yearBegin.toJson(),
        'year_end': yearEnd.toJson(),
        'logo': logo.toJson(),
      };
}
