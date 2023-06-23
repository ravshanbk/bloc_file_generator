import '../../swagger_model.dart';
import 'announcement_verify_owner_create_properties/announcement_verify_owner_create_properties.dart';

class AnnouncementVerifyOwnerCreate {
  final List<String> required;
  final String type;
  final AnnouncementVerifyOwnerCreateProperties properties;

  AnnouncementVerifyOwnerCreate({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory AnnouncementVerifyOwnerCreate.fromJson(Map<String, dynamic> json) => AnnouncementVerifyOwnerCreate(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: AnnouncementVerifyOwnerCreateProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
