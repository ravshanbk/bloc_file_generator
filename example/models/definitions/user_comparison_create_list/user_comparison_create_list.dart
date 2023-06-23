import '../../swagger_model.dart';
import 'user_comparison_create_list_properties/user_comparison_create_list_properties.dart';

class UserComparisonCreateList {
  final List<String> required;
  final String type;
  final UserComparisonCreateListProperties properties;

  UserComparisonCreateList({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory UserComparisonCreateList.fromJson(Map<String, dynamic> json) => UserComparisonCreateList(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: UserComparisonCreateListProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
