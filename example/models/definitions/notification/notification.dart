import '../../swagger_model.dart';
import 'notification_properties/notification_properties.dart';

class Notification {
  final List<String> required;
  final String type;
  final NotificationProperties properties;

  Notification({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory Notification.fromJson(Map<String, dynamic> json) => Notification(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: NotificationProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
