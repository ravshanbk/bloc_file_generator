import 'announcement_properties/announcement_properties.dart';

class Announcement {
  final List<String> required;
  final String type;
  final AnnouncementProperties properties;

  Announcement({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory Announcement.fromJson(Map<String, dynamic> json) => Announcement(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: AnnouncementProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
