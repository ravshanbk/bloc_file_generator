import 'announcement_owner_detail_properties/announcement_owner_detail_properties.dart';

class AnnouncementOwnerDetail {
  final List<String> required;
  final String type;
  final AnnouncementOwnerDetailProperties properties;

  AnnouncementOwnerDetail({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory AnnouncementOwnerDetail.fromJson(Map<String, dynamic> json) => AnnouncementOwnerDetail(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: AnnouncementOwnerDetailProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
