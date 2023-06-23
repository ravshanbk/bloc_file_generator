import 'announcement_create_properties/announcement_create_properties.dart';

class AnnouncementCreate {
  final List<String> required;
  final String type;
  final AnnouncementCreateProperties properties;

  AnnouncementCreate({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory AnnouncementCreate.fromJson(Map<String, dynamic> json) => AnnouncementCreate(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: AnnouncementCreateProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
