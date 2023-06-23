import '../../swagger_model.dart';
import 'user_detail_with_counts_properties/user_detail_with_counts_properties.dart';

class UserDetailWithCounts {
  final List<String> required;
  final String type;
  final UserDetailWithCountsProperties properties;

  UserDetailWithCounts({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory UserDetailWithCounts.fromJson(Map<String, dynamic> json) => UserDetailWithCounts(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: UserDetailWithCountsProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
