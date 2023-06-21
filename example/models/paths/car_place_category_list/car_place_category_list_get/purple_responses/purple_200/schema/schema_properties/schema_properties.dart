import '../../../../../../../security_definations/basic/basic.dart';
import '../../../../../../../swagger_model.dart';
import '../../../../../../car_announcement_counter/car_annoucement_counter_get/car_place_category_list_parametr/fluffy_responses/fluffy_200/rent_with_purchase_class/rent_with_purchase.dart';
import 'equipment_class/equipment_class.dart';

class SchemaProperties {
  final Basic count;
  final EquipmentClass next;
  final EquipmentClass previous;
  final RentWithPurchaseClass results;

  SchemaProperties({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  factory SchemaProperties.fromJson(Map<String, dynamic> json) => SchemaProperties(
        count: Basic.fromJson(json['count']),
        next: EquipmentClass.fromJson(json['next']),
        previous: EquipmentClass.fromJson(json['previous']),
        results: RentWithPurchaseClass.fromJson(json['results']),
      );

  Map<String, dynamic> toJson() => {
        'count': count.toJson(),
        'next': next.toJson(),
        'previous': previous.toJson(),
        'results': results.toJson(),
      };
}
