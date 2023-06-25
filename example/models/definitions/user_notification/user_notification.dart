import '../../swagger_model.dart';
import 'user_notification_properties/user_notification_properties.dart';

class UserNotification {
  final List<String> required;
  final String type;
  final UserNotificationProperties properties;

  UserNotification({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory UserNotification.fromJson(Map<String, dynamic> json) => UserNotification(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: UserNotificationProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
