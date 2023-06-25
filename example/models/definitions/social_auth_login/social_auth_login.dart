import '../../swagger_model.dart';
import 'social_auth_login_properties/social_auth_login_properties.dart';

class SocialAuthLogin {
  final String type;
  final SocialAuthLoginProperties properties;

  SocialAuthLogin({
    required this.type,
    required this.properties,
  });

  factory SocialAuthLogin.fromJson(Map<String, dynamic> json) => SocialAuthLogin(
        type: json['type'],
        properties: SocialAuthLoginProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'type': type,
        'properties': properties.toJson(),
      };
}
