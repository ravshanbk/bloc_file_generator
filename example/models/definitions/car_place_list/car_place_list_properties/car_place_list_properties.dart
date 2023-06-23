import '../../../paths/car_announcement_counter/car_annoucement_counter_get/car_place_category_list_parametr/fluffy_responses/fluffy_200/rent_with_purchase_class/rent_with_purchase.dart';
import '../../../paths/car_place_category_list/car_place_category_list_get/purple_responses/purple_200/schema/schema_properties/equipment_class/equipment_class.dart';
import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';

class CarPlaceListProperties {
  final IsComparisonClass id;
  final ContactNameClass name;
  final EquipmentClass slug;
  final RentWithPurchaseClass category;
  final ContactNameClass address;
  final ContactNameClass region;
  final EquipmentClass latitude;
  final EquipmentClass longitude;
  final RentWithPurchaseClass workingDays;
  final IsComparisonClass isWorkingAllDays;

  CarPlaceListProperties({
    required this.id,
    required this.name,
    required this.slug,
    required this.category,
    required this.address,
    required this.region,
    required this.latitude,
    required this.longitude,
    required this.workingDays,
    required this.isWorkingAllDays,
  });

  factory CarPlaceListProperties.fromJson(Map<String, dynamic> json) => CarPlaceListProperties(
        id: IsComparisonClass.fromJson(json['id']),
        name: ContactNameClass.fromJson(json['name']),
        slug: EquipmentClass.fromJson(json['slug']),
        category: RentWithPurchaseClass.fromJson(json['category']),
        address: ContactNameClass.fromJson(json['address']),
        region: ContactNameClass.fromJson(json['region']),
        latitude: EquipmentClass.fromJson(json['latitude']),
        longitude: EquipmentClass.fromJson(json['longitude']),
        workingDays: RentWithPurchaseClass.fromJson(json['working_days']),
        isWorkingAllDays: IsComparisonClass.fromJson(json['is_working_all_days']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'name': name.toJson(),
        'slug': slug.toJson(),
        'category': category.toJson(),
        'address': address.toJson(),
        'region': region.toJson(),
        'latitude': latitude.toJson(),
        'longitude': longitude.toJson(),
        'working_days': workingDays.toJson(),
        'is_working_all_days': isWorkingAllDays.toJson(),
      };
}
