import '../../swagger_model.dart';
import 'rent_order_properties/rent_order_properties.dart';

class RentOrder {
  final List<String> required;
  final String type;
  final RentOrderGetProperties properties;

  RentOrder({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory RentOrder.fromJson(Map<String, dynamic> json) => RentOrder(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: RentOrderGetProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
