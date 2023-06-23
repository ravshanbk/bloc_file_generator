import '../../../paths/car_place_category_list/car_place_category_list_get/purple_responses/purple_200/schema/schema_properties/equipment_class/equipment_class.dart';
import '../../../paths/car_place_slug/path_class/patch_responses/the_201_class/dealer/dealer.dart';
import '../../annoncement_compare/annoncement_compare_properties/year/year.dart';
import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';

class DealerMiniProperties {
  final IsComparisonClass id;
  final ContactNameClass name;
  final ContactNameClass slug;
  final IsComparisonClass avatar;
  final EquipmentClass description;
  final ContactNameClass phoneNumber;
  final EquipmentClass contactFrom;
  final EquipmentClass contactTo;
  final EquipmentClass longitude;
  final EquipmentClass latitude;
  final Dealer district;
  final Year carCount;

  DealerMiniProperties({
    required this.id,
    required this.name,
    required this.slug,
    required this.avatar,
    required this.description,
    required this.phoneNumber,
    required this.contactFrom,
    required this.contactTo,
    required this.longitude,
    required this.latitude,
    required this.district,
    required this.carCount,
  });

  factory DealerMiniProperties.fromJson(Map<String, dynamic> json) => DealerMiniProperties(
        id: IsComparisonClass.fromJson(json['id']),
        name: ContactNameClass.fromJson(json['name']),
        slug: ContactNameClass.fromJson(json['slug']),
        avatar: IsComparisonClass.fromJson(json['avatar']),
        description: EquipmentClass.fromJson(json['description']),
        phoneNumber: ContactNameClass.fromJson(json['phone_number']),
        contactFrom: EquipmentClass.fromJson(json['contact_from']),
        contactTo: EquipmentClass.fromJson(json['contact_to']),
        longitude: EquipmentClass.fromJson(json['longitude']),
        latitude: EquipmentClass.fromJson(json['latitude']),
        district: Dealer.fromJson(json['district']),
        carCount: Year.fromJson(json['car_count']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'name': name.toJson(),
        'slug': slug.toJson(),
        'avatar': avatar.toJson(),
        'description': description.toJson(),
        'phone_number': phoneNumber.toJson(),
        'contact_from': contactFrom.toJson(),
        'contact_to': contactTo.toJson(),
        'longitude': longitude.toJson(),
        'latitude': latitude.toJson(),
        'district': district.toJson(),
        'car_count': carCount.toJson(),
      };
}
