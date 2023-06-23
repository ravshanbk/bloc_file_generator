import '../../../swagger_model.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';
import '../../product/product_properties/body_type/body_type.dart';
import 'years/years.dart';

class YearProperties {
  final IsComparisonClass id;
  final BodyType model;
  final Years years;

  YearProperties({
    required this.id,
    required this.model,
    required this.years,
  });

  factory YearProperties.fromJson(Map<String, dynamic> json) => YearProperties(
        id: IsComparisonClass.fromJson(json['id']),
        model: BodyType.fromJson(json['model']),
        years: Years.fromJson(json['years']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'model': model.toJson(),
        'years': years.toJson(),
      };
}
