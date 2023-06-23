import '../../../paths/car_place_category_list/car_place_category_list_get/purple_responses/purple_200/schema/schema_properties/equipment_class/equipment_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';
import '../../product/product_properties/body_type/body_type.dart';

class AnnouncementVerifyOwnerCreateProperties {
  final IsComparisonClass id;
  final BodyType announcement;
  final IsComparisonClass technicalPassportFront;
  final IsComparisonClass technicalPassportBack;
  final IsComparisonClass driverLicenseFront;
  final IsComparisonClass driverLicenseBack;
  final EquipmentClass additionalInfo;
  final EquipmentClass user;

  AnnouncementVerifyOwnerCreateProperties({
    required this.id,
    required this.announcement,
    required this.technicalPassportFront,
    required this.technicalPassportBack,
    required this.driverLicenseFront,
    required this.driverLicenseBack,
    required this.additionalInfo,
    required this.user,
  });

  factory AnnouncementVerifyOwnerCreateProperties.fromJson(Map<String, dynamic> json) =>
      AnnouncementVerifyOwnerCreateProperties(
        id: IsComparisonClass.fromJson(json['id']),
        announcement: BodyType.fromJson(json['announcement']),
        technicalPassportFront: IsComparisonClass.fromJson(json['technical_passport_front']),
        technicalPassportBack: IsComparisonClass.fromJson(json['technical_passport_back']),
        driverLicenseFront: IsComparisonClass.fromJson(json['driver_license_front']),
        driverLicenseBack: IsComparisonClass.fromJson(json['driver_license_back']),
        additionalInfo: EquipmentClass.fromJson(json['additional_info']),
        user: EquipmentClass.fromJson(json['user']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'announcement': announcement.toJson(),
        'technical_passport_front': technicalPassportFront.toJson(),
        'technical_passport_back': technicalPassportBack.toJson(),
        'driver_license_front': driverLicenseFront.toJson(),
        'driver_license_back': driverLicenseBack.toJson(),
        'additional_info': additionalInfo.toJson(),
        'user': user.toJson(),
      };
}
