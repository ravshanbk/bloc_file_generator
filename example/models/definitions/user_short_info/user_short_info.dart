import 'user_short_info_properties/user_short_info_properties.dart';

class UserShortInfo {
  final String type;
  final UserShortInfoProperties properties;

  UserShortInfo({
    required this.type,
    required this.properties,
  });

  factory UserShortInfo.fromJson(Map<String, dynamic> json) => UserShortInfo(
        type: json['type'],
        properties: UserShortInfoProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'type': type,
        'properties': properties.toJson(),
      };
}
