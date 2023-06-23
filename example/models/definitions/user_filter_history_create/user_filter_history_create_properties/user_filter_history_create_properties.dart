import '../../../paths/car_place_category_list/car_place_category_list_get/purple_responses/purple_200/schema/schema_properties/equipment_class/equipment_class.dart';
import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../product/product_properties/body_type/body_type.dart';
import '../../rent_order/rent_order_properties/additional_services/additional_services.dart';

class UserFilterHistoryCreateProperties {
  final EquipmentClass id;
  final BodyType make;
  final AdditionalServices model;
  final ContactNameClass query;
  final BodyType queryData;

  UserFilterHistoryCreateProperties({
    required this.id,
    required this.make,
    required this.model,
    required this.query,
    required this.queryData,
  });

  factory UserFilterHistoryCreateProperties.fromJson(Map<String, dynamic> json) => UserFilterHistoryCreateProperties(
        id: EquipmentClass.fromJson(json['id']),
        make: BodyType.fromJson(json['make']),
        model: AdditionalServices.fromJson(json['model']),
        query: ContactNameClass.fromJson(json['query']),
        queryData: BodyType.fromJson(json['query_data']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'make': make.toJson(),
        'model': model.toJson(),
        'query': query.toJson(),
        'query_data': queryData.toJson(),
      };
}
