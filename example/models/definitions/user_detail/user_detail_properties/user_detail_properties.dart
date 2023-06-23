import '../../../paths/car_place_category_list/car_place_category_list_get/purple_responses/purple_200/schema/schema_properties/equipment_class/equipment_class.dart';
import '../../annoncement_compare/annoncement_compare_properties/price/price.dart';
import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';
import '../../product/product_properties/body_type/body_type.dart';
import '../../user_detail_with_counts/user_detail_with_counts_properties/is/is.dart';

class UserDetailProperties {
  final IsComparisonClass id;
  final IsComparisonClass username;
  final ContactNameClass firstName;
  final ContactNameClass lastName;
  final ContactNameClass fullName;
  final EquipmentClass email;
  final IsComparisonClass image;
  final EquipmentClass region;
  final EquipmentClass phoneNumber;
  final BodyType isDealer;
  final Is isActive;
  final Is isStaff;
  final Is isSuperuser;
  final EquipmentClass lastLogin;
  final Price dateJoined;
  final IsComparisonClass isReadAllNotifications;

  UserDetailProperties({
    required this.id,
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.fullName,
    required this.email,
    required this.image,
    required this.region,
    required this.phoneNumber,
    required this.isDealer,
    required this.isActive,
    required this.isStaff,
    required this.isSuperuser,
    required this.lastLogin,
    required this.dateJoined,
    required this.isReadAllNotifications,
  });

  factory UserDetailProperties.fromJson(Map<String, dynamic> json) => UserDetailProperties(
        id: IsComparisonClass.fromJson(json['id']),
        username: IsComparisonClass.fromJson(json['username']),
        firstName: ContactNameClass.fromJson(json['first_name']),
        lastName: ContactNameClass.fromJson(json['last_name']),
        fullName: ContactNameClass.fromJson(json['full_name']),
        email: EquipmentClass.fromJson(json['email']),
        image: IsComparisonClass.fromJson(json['image']),
        region: EquipmentClass.fromJson(json['region']),
        phoneNumber: EquipmentClass.fromJson(json['phone_number']),
        isDealer: BodyType.fromJson(json['is_dealer']),
        isActive: Is.fromJson(json['is_active']),
        isStaff: Is.fromJson(json['is_staff']),
        isSuperuser: Is.fromJson(json['is_superuser']),
        lastLogin: EquipmentClass.fromJson(json['last_login']),
        dateJoined: Price.fromJson(json['date_joined']),
        isReadAllNotifications: IsComparisonClass.fromJson(json['is_read_all_notifications']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'username': username.toJson(),
        'first_name': firstName.toJson(),
        'last_name': lastName.toJson(),
        'full_name': fullName.toJson(),
        'email': email.toJson(),
        'image': image.toJson(),
        'region': region.toJson(),
        'phone_number': phoneNumber.toJson(),
        'is_dealer': isDealer.toJson(),
        'is_active': isActive.toJson(),
        'is_staff': isStaff.toJson(),
        'is_superuser': isSuperuser.toJson(),
        'last_login': lastLogin.toJson(),
        'date_joined': dateJoined.toJson(),
        'is_read_all_notifications': isReadAllNotifications.toJson(),
      };
}
