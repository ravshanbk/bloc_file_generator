import '../../swagger_model.dart';
import 'user_filter_history_delete_properties/user_filter_history_delete_properties.dart';

class UserFilterHistoryDelete {
  final List<String> required;
  final String type;
  final UserFilterHistoryDeleteProperties properties;

  UserFilterHistoryDelete({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory UserFilterHistoryDelete.fromJson(Map<String, dynamic> json) => UserFilterHistoryDelete(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: UserFilterHistoryDeleteProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
