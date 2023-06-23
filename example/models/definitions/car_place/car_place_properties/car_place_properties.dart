import '../../../paths/car_announcement_counter/car_annoucement_counter_get/car_place_category_list_parametr/fluffy_responses/fluffy_200/rent_with_purchase_class/rent_with_purchase.dart';
import '../../../paths/car_place_category_list/car_place_category_list_get/purple_responses/purple_200/schema/schema_properties/equipment_class/equipment_class.dart';
import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';

class CarPlaceProperties {
  final IsComparisonClass id;
  final ContactNameClass name;
  final ContactNameClass phone;
  final RentWithPurchaseClass category;
  final EquipmentClass contactFrom;
  final EquipmentClass contactTo;
  final EquipmentClass longitude;
  final EquipmentClass latitude;
  final EquipmentClass description;
  final ContactNameClass address;
  final ContactNameClass region;
  final IsComparisonClass gallery;
  final EquipmentClass slug;
  final RentWithPurchaseClass workingDays;
  final IsComparisonClass isWorkingAllDays;

  CarPlaceProperties({
    required this.id,
    required this.name,
    required this.phone,
    required this.category,
    required this.contactFrom,
    required this.contactTo,
    required this.longitude,
    required this.latitude,
    required this.description,
    required this.address,
    required this.region,
    required this.gallery,
    required this.slug,
    required this.workingDays,
    required this.isWorkingAllDays,
  });

  factory CarPlaceProperties.fromJson(Map<String, dynamic> json) => CarPlaceProperties(
        id: IsComparisonClass.fromJson(json['id']),
        name: ContactNameClass.fromJson(json['name']),
        phone: ContactNameClass.fromJson(json['phone']),
        category: RentWithPurchaseClass.fromJson(json['category']),
        contactFrom: EquipmentClass.fromJson(json['contact_from']),
        contactTo: EquipmentClass.fromJson(json['contact_to']),
        longitude: EquipmentClass.fromJson(json['longitude']),
        latitude: EquipmentClass.fromJson(json['latitude']),
        description: EquipmentClass.fromJson(json['description']),
        address: ContactNameClass.fromJson(json['address']),
        region: ContactNameClass.fromJson(json['region']),
        gallery: IsComparisonClass.fromJson(json['gallery']),
        slug: EquipmentClass.fromJson(json['slug']),
        workingDays: RentWithPurchaseClass.fromJson(json['working_days']),
        isWorkingAllDays: IsComparisonClass.fromJson(json['is_working_all_days']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'name': name.toJson(),
        'phone': phone.toJson(),
        'category': category.toJson(),
        'contact_from': contactFrom.toJson(),
        'contact_to': contactTo.toJson(),
        'longitude': longitude.toJson(),
        'latitude': latitude.toJson(),
        'description': description.toJson(),
        'address': address.toJson(),
        'region': region.toJson(),
        'gallery': gallery.toJson(),
        'slug': slug.toJson(),
        'working_days': workingDays.toJson(),
        'is_working_all_days': isWorkingAllDays.toJson(),
      };
}
