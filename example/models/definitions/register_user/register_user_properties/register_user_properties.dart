import '../../../paths/car_place_category_list/car_place_category_list_get/purple_responses/purple_200/schema/schema_properties/equipment_class/equipment_class.dart';
import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';

class RegisterUserProperties {
  final IsComparisonClass image;
  final ContactNameClass fullName;
  final EquipmentClass region;
  final ContactNameClass phoneNumber;
  final EquipmentClass email;
  final ContactNameClass password;
  final IsComparisonClass token;

  RegisterUserProperties({
    required this.image,
    required this.fullName,
    required this.region,
    required this.phoneNumber,
    required this.email,
    required this.password,
    required this.token,
  });

  factory RegisterUserProperties.fromJson(Map<String, dynamic> json) => RegisterUserProperties(
        image: IsComparisonClass.fromJson(json['image']),
        fullName: ContactNameClass.fromJson(json['full_name']),
        region: EquipmentClass.fromJson(json['region']),
        phoneNumber: ContactNameClass.fromJson(json['phone_number']),
        email: EquipmentClass.fromJson(json['email']),
        password: ContactNameClass.fromJson(json['password']),
        token: IsComparisonClass.fromJson(json['token']),
      );

  Map<String, dynamic> toJson() => {
        'image': image.toJson(),
        'full_name': fullName.toJson(),
        'region': region.toJson(),
        'phone_number': phoneNumber.toJson(),
        'email': email.toJson(),
        'password': password.toJson(),
        'token': token.toJson(),
      };
}
