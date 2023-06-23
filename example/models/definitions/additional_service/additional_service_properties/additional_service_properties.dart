import '../../annoncement_compare/annoncement_compare_properties/price/price.dart';
import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';

class AdditionalServiceProperties {
  final IsComparisonClass id;
  final ContactNameClass name;
  final Price price;

  AdditionalServiceProperties({
    required this.id,
    required this.name,
    required this.price,
  });

  factory AdditionalServiceProperties.fromJson(Map<String, dynamic> json) => AdditionalServiceProperties(
        id: IsComparisonClass.fromJson(json['id']),
        name: ContactNameClass.fromJson(json['name']),
        price: Price.fromJson(json['price']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'name': name.toJson(),
        'price': price.toJson(),
      };
}
