import '../../swagger_model.dart';
import 'user_mini_properties/user_mini_properties.dart';

class UserMini {
  final List<String> required;
  final String type;
  final UserMiniProperties properties;

  UserMini({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory UserMini.fromJson(Map<String, dynamic> json) => UserMini(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: UserMiniProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
