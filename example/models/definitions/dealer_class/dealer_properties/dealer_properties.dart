import '../../../paths/car_announcement_counter/car_annoucement_counter_get/car_place_category_list_parametr/fluffy_responses/fluffy_200/rent_with_purchase_class/rent_with_purchase.dart';
import '../../../paths/car_place_category_list/car_place_category_list_get/purple_responses/purple_200/schema/schema_properties/equipment_class/equipment_class.dart';
import '../../../paths/car_place_slug/path_class/patch_responses/the_201_class/dealer/dealer.dart';
import '../../annoncement_compare/annoncement_compare_properties/year/year.dart';
import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';

class DealerProperties {
  final IsComparisonClass id;
  final ContactNameClass name;
  final ContactNameClass slug;
  final EquipmentClass description;
  final ContactNameClass phoneNumber;
  final IsComparisonClass avatar;
  final EquipmentClass contactFrom;
  final EquipmentClass contactTo;
  final EquipmentClass locationUrl;
  final EquipmentClass longitude;
  final EquipmentClass latitude;
  final Dealer district;
  final Year carCount;
  final Dealer dealerType;
  final RentWithPurchaseClass gallery;
  final ContactNameClass address;
  final IsComparisonClass isWorkingAllDays;
  final RentWithPurchaseClass workingDays;

  DealerProperties({
    required this.id,
    required this.name,
    required this.slug,
    required this.description,
    required this.phoneNumber,
    required this.avatar,
    required this.contactFrom,
    required this.contactTo,
    required this.locationUrl,
    required this.longitude,
    required this.latitude,
    required this.district,
    required this.carCount,
    required this.dealerType,
    required this.gallery,
    required this.address,
    required this.isWorkingAllDays,
    required this.workingDays,
  });

  factory DealerProperties.fromJson(Map<String, dynamic> json) => DealerProperties(
        id: IsComparisonClass.fromJson(json['id']),
        name: ContactNameClass.fromJson(json['name']),
        slug: ContactNameClass.fromJson(json['slug']),
        description: EquipmentClass.fromJson(json['description']),
        phoneNumber: ContactNameClass.fromJson(json['phone_number']),
        avatar: IsComparisonClass.fromJson(json['avatar']),
        contactFrom: EquipmentClass.fromJson(json['contact_from']),
        contactTo: EquipmentClass.fromJson(json['contact_to']),
        locationUrl: EquipmentClass.fromJson(json['location_url']),
        longitude: EquipmentClass.fromJson(json['longitude']),
        latitude: EquipmentClass.fromJson(json['latitude']),
        district: Dealer.fromJson(json['district']),
        carCount: Year.fromJson(json['car_count']),
        dealerType: Dealer.fromJson(json['dealer_type']),
        gallery: RentWithPurchaseClass.fromJson(json['gallery']),
        address: ContactNameClass.fromJson(json['address']),
        isWorkingAllDays: IsComparisonClass.fromJson(json['is_working_all_days']),
        workingDays: RentWithPurchaseClass.fromJson(json['working_days']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'name': name.toJson(),
        'slug': slug.toJson(),
        'description': description.toJson(),
        'phone_number': phoneNumber.toJson(),
        'avatar': avatar.toJson(),
        'contact_from': contactFrom.toJson(),
        'contact_to': contactTo.toJson(),
        'location_url': locationUrl.toJson(),
        'longitude': longitude.toJson(),
        'latitude': latitude.toJson(),
        'district': district.toJson(),
        'car_count': carCount.toJson(),
        'dealer_type': dealerType.toJson(),
        'gallery': gallery.toJson(),
        'address': address.toJson(),
        'is_working_all_days': isWorkingAllDays.toJson(),
        'working_days': workingDays.toJson(),
      };
}
