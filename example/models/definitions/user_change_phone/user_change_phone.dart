import '../../swagger_model.dart';
import 'user_change_phone_properties/user_change_phone_properties.dart';

class UserChangePhone {
  final List<String> required;
  final String type;
  final UserChangePhoneProperties properties;

  UserChangePhone({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory UserChangePhone.fromJson(Map<String, dynamic> json) => UserChangePhone(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: UserChangePhoneProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
