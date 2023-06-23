import '../../swagger_model.dart';
import 'user_count_data_properties/user_count_data_properties.dart';

class UserCountData {
  final List<String> required;
  final String type;
  final UserCountDataProperties properties;

  UserCountData({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory UserCountData.fromJson(Map<String, dynamic> json) => UserCountData(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: UserCountDataProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
