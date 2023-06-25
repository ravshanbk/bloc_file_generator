import 'register_user_properties/register_user_properties.dart';

class RegisterUser {
  final List<String> required;
  final String type;
  final RegisterUserProperties properties;

  RegisterUser({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory RegisterUser.fromJson(Map<String, dynamic> json) => RegisterUser(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: RegisterUserProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
