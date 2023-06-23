import '../../../paths/car_place_category_list/car_place_category_list_get/purple_responses/purple_200/schema/schema_properties/equipment_class/equipment_class.dart';

import '../../annoncement_compare/annoncement_compare_properties/price/price.dart';
import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';
import '../../product/product_properties/body_type/body_type.dart';
import 'additional_services/additional_services.dart';

class RentOrderGetProperties {
  final IsComparisonClass id;
  final BodyType? user;
  final BodyType rent;
  final ContactNameClass userName;
  final ContactNameClass phoneNumber;
  final Price startDate;
  final Price endDate;
  final EquipmentClass startLongitude;
  final EquipmentClass startLatitude;
  final EquipmentClass endLongitude;
  final EquipmentClass endLatitude;
  final AdditionalServices additionalServices;
  final IsComparisonClass? totalPrice;
  final BodyType? isActive;

  RentOrderGetProperties({
    required this.id,
    this.user,
    required this.rent,
    required this.userName,
    required this.phoneNumber,
    required this.startDate,
    required this.endDate,
    required this.startLongitude,
    required this.startLatitude,
    required this.endLongitude,
    required this.endLatitude,
    required this.additionalServices,
    this.totalPrice,
    this.isActive,
  });

  factory RentOrderGetProperties.fromJson(Map<String, dynamic> json) => RentOrderGetProperties(
        id: IsComparisonClass.fromJson(json['id']),
        user: json['user'] == null ? null : BodyType.fromJson(json['user']),
        rent: BodyType.fromJson(json['rent']),
        userName: ContactNameClass.fromJson(json['user_name']),
        phoneNumber: ContactNameClass.fromJson(json['phone_number']),
        startDate: Price.fromJson(json['start_date']),
        endDate: Price.fromJson(json['end_date']),
        startLongitude: EquipmentClass.fromJson(json['start_longitude']),
        startLatitude: EquipmentClass.fromJson(json['start_latitude']),
        endLongitude: EquipmentClass.fromJson(json['end_longitude']),
        endLatitude: EquipmentClass.fromJson(json['end_latitude']),
        additionalServices: AdditionalServices.fromJson(json['additional_services']),
        totalPrice: json['total_price'] == null ? null : IsComparisonClass.fromJson(json['total_price']),
        isActive: json['is_active'] == null ? null : BodyType.fromJson(json['is_active']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'user': user?.toJson(),
        'rent': rent.toJson(),
        'user_name': userName.toJson(),
        'phone_number': phoneNumber.toJson(),
        'start_date': startDate.toJson(),
        'end_date': endDate.toJson(),
        'start_longitude': startLongitude.toJson(),
        'start_latitude': startLatitude.toJson(),
        'end_longitude': endLongitude.toJson(),
        'end_latitude': endLatitude.toJson(),
        'additional_services': additionalServices.toJson(),
        'total_price': totalPrice?.toJson(),
        'is_active': isActive?.toJson(),
      };
}
