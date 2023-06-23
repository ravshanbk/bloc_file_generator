import '../../swagger_model.dart';
import 'create_announcement_order_properties/create_announcement_order_properties.dart';

class CreateAnnouncementOrder {
  final List<String> required;
  final String type;
  final CreateAnnouncementOrderProperties properties;

  CreateAnnouncementOrder({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory CreateAnnouncementOrder.fromJson(Map<String, dynamic> json) => CreateAnnouncementOrder(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: CreateAnnouncementOrderProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
