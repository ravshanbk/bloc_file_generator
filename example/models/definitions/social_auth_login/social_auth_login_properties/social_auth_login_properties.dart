import '../../product/product_properties/body_type/body_type.dart';

class SocialAuthLoginProperties {
  final BodyType accessToken;
  final BodyType code;

  SocialAuthLoginProperties({
    required this.accessToken,
    required this.code,
  });

  factory SocialAuthLoginProperties.fromJson(Map<String, dynamic> json) => SocialAuthLoginProperties(
    accessToken: BodyType.fromJson(json['access_token']),
    code: BodyType.fromJson(json['code']),
  );

  Map<String, dynamic> toJson() => {
    'access_token': accessToken.toJson(),
    'code': code.toJson(),
  };
}
