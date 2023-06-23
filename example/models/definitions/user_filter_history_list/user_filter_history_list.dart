import '../../swagger_model.dart';
import 'user_filter_history_list_properties/user_filter_history_list_properties.dart';

class UserFilterHistoryList {
  final List<String> required;
  final String type;
  final UserFilterHistoryListProperties properties;

  UserFilterHistoryList({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory UserFilterHistoryList.fromJson(Map<String, dynamic> json) => UserFilterHistoryList(
    required: List<String>.from(json['required'].map((x) => x)),
    type: json['type'],
    properties: UserFilterHistoryListProperties.fromJson(json['properties']),
  );

  Map<String, dynamic> toJson() => {
    'required': List<dynamic>.from(required.map((x) => x)),
    'type': type,
    'properties': properties.toJson(),
  };
}
