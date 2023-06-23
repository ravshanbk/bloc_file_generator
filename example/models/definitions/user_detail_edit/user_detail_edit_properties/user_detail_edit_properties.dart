import '../../../paths/car_place_category_list/car_place_category_list_get/purple_responses/purple_200/schema/schema_properties/equipment_class/equipment_class.dart';
import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';

class UserDetailEditProperties {
  final ContactNameClass fullName;
  final IsComparisonClass image;
  final EquipmentClass region;
  final EquipmentClass email;

  UserDetailEditProperties({
    required this.fullName,
    required this.image,
    required this.region,
    required this.email,
  });

  factory UserDetailEditProperties.fromJson(Map<String, dynamic> json) => UserDetailEditProperties(
        fullName: ContactNameClass.fromJson(json['full_name']),
        image: IsComparisonClass.fromJson(json['image']),
        region: EquipmentClass.fromJson(json['region']),
        email: EquipmentClass.fromJson(json['email']),
      );

  Map<String, dynamic> toJson() => {
        'full_name': fullName.toJson(),
        'image': image.toJson(),
        'region': region.toJson(),
        'email': email.toJson(),
      };
}
