import '../../../paths/car_place_category_list/car_place_category_list_get/purple_responses/purple_200/schema/schema_properties/equipment_class/equipment_class.dart';
import '../../annoncement_compare/annoncement_compare_properties/price/price.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';
import '../../working_days/car_place_working_days_properties/currency/currency.dart';

class AnnouncementReelsProperties {
  final IsComparisonClass id;
  final Price price;
  final Currency currency;
  final EquipmentClass discount;

  AnnouncementReelsProperties({
    required this.id,
    required this.price,
    required this.currency,
    required this.discount,
  });

  factory AnnouncementReelsProperties.fromJson(Map<String, dynamic> json) => AnnouncementReelsProperties(
        id: IsComparisonClass.fromJson(json['id']),
        price: Price.fromJson(json['price']),
        currency: Currency.fromJson(json['currency']),
        discount: EquipmentClass.fromJson(json['discount']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'price': price.toJson(),
        'currency': currency.toJson(),
        'discount': discount.toJson(),
      };
}
