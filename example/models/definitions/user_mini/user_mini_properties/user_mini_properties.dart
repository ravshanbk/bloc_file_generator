import '../../../paths/car_place_category_list/car_place_category_list_get/purple_responses/purple_200/schema/schema_properties/equipment_class/equipment_class.dart';
import '../../../paths/car_place_slug/path_class/patch_responses/the_201_class/dealer/dealer.dart';
import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';

class UserMiniProperties {
  final IsComparisonClass id;
  final EquipmentClass phoneNumber;
  final ContactNameClass fullName;
  final EquipmentClass email;
  final Dealer region;
  final IsComparisonClass image;

  UserMiniProperties({
    required this.id,
    required this.phoneNumber,
    required this.fullName,
    required this.email,
    required this.region,
    required this.image,
  });

  factory UserMiniProperties.fromJson(Map<String, dynamic> json) => UserMiniProperties(
        id: IsComparisonClass.fromJson(json['id']),
        phoneNumber: EquipmentClass.fromJson(json['phone_number']),
        fullName: ContactNameClass.fromJson(json['full_name']),
        email: EquipmentClass.fromJson(json['email']),
        region: Dealer.fromJson(json['region']),
        image: IsComparisonClass.fromJson(json['image']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'phone_number': phoneNumber.toJson(),
        'full_name': fullName.toJson(),
        'email': email.toJson(),
        'region': region.toJson(),
        'image': image.toJson(),
      };
}
