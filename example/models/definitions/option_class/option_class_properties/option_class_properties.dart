import '../../../paths/car_announcement_counter/car_annoucement_counter_get/car_place_category_list_parametr/fluffy_responses/fluffy_200/rent_with_purchase_class/rent_with_purchase.dart';
import '../../../paths/car_place_slug/path_class/patch_responses/the_201_class/dealer/dealer.dart';
import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';
import '../../working_days/car_place_working_days_properties/currency/currency.dart';

class OptionProperties {
  final IsComparisonClass id;
  final ContactNameClass name;
  final Dealer category;
  final Currency type;
  final RentWithPurchaseClass? items;

  OptionProperties({
    required this.id,
    required this.name,
    required this.category,
    required this.type,
    this.items,
  });

  factory OptionProperties.fromJson(Map<String, dynamic> json) => OptionProperties(
        id: IsComparisonClass.fromJson(json['id']),
        name: ContactNameClass.fromJson(json['name']),
        category: Dealer.fromJson(json['category']),
        type: Currency.fromJson(json['type']),
        items: json['items'] == null ? null : RentWithPurchaseClass.fromJson(json['items']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'name': name.toJson(),
        'category': category.toJson(),
        'type': type.toJson(),
        'items': items?.toJson(),
      };
}
