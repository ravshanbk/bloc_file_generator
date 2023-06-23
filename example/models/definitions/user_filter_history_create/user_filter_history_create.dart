import '../../swagger_model.dart';
import 'user_filter_history_create_properties/user_filter_history_create_properties.dart';

class UserFilterHistoryCreate {
  final List<String> required;
  final String type;
  final UserFilterHistoryCreateProperties properties;

  UserFilterHistoryCreate({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory UserFilterHistoryCreate.fromJson(Map<String, dynamic> json) => UserFilterHistoryCreate(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: UserFilterHistoryCreateProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
