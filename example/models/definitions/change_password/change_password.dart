import '../../swagger_model.dart';
import 'change_password_properties/change_password_properties.dart';

class ChangePassword {
  final List<String> required;
  final String type;
  final ChangePasswordProperties properties;

  ChangePassword({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory ChangePassword.fromJson(Map<String, dynamic> json) => ChangePassword(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: ChangePasswordProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
