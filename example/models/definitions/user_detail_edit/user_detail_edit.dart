import '../../swagger_model.dart';
import 'user_detail_edit_properties/user_detail_edit_properties.dart';

class UserDetailEdit {
  final String type;
  final UserDetailEditProperties properties;

  UserDetailEdit({
    required this.type,
    required this.properties,
  });

  factory UserDetailEdit.fromJson(Map<String, dynamic> json) => UserDetailEdit(
        type: json['type'],
        properties: UserDetailEditProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'type': type,
        'properties': properties.toJson(),
      };
}
