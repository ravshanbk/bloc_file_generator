import 'token_refresh_properties/token_refresh_properties.dart';

class TokenRefresh {
  final List<String> required;
  final String type;
  final TokenRefreshProperties properties;

  TokenRefresh({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory TokenRefresh.fromJson(Map<String, dynamic> json) => TokenRefresh(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: TokenRefreshProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
