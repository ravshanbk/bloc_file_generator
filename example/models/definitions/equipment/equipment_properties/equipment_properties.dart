import '../../../paths/car_announcement_counter/car_annoucement_counter_get/car_place_category_list_parametr/fluffy_responses/fluffy_200/rent_with_purchase_class/rent_with_purchase.dart';
import '../../../paths/car_place_category_list/car_place_category_list_get/purple_responses/purple_200/schema/schema_properties/equipment_class/equipment_class.dart';
import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';

class EquipmentProperties {
  final IsComparisonClass id;
  final ContactNameClass name;
  final EquipmentClass? model;
  final RentWithPurchaseClass options;

  EquipmentProperties({
    required this.id,
    required this.name,
    this.model,
    required this.options,
  });

  factory EquipmentProperties.fromJson(Map<String, dynamic> json) => EquipmentProperties(
        id: IsComparisonClass.fromJson(json['id']),
        name: ContactNameClass.fromJson(json['name']),
        model: json['model'] == null ? null : EquipmentClass.fromJson(json['model']),
        options: RentWithPurchaseClass.fromJson(json['options']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'name': name.toJson(),
        'model': model?.toJson(),
        'options': options.toJson(),
      };
}
