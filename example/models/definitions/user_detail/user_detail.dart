import '../../swagger_model.dart';
import 'user_detail_properties/user_detail_properties.dart';

class UserDetail {
  final String type;
  final UserDetailProperties properties;

  UserDetail({
    required this.type,
    required this.properties,
  });

  factory UserDetail.fromJson(Map<String, dynamic> json) => UserDetail(
        type: json['type'],
        properties: UserDetailProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'type': type,
        'properties': properties.toJson(),
      };
}
