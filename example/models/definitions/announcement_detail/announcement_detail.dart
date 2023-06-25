import 'announcement_detail_properties/announcement_detail_properties.dart';

class AnnouncementDetail {
  final List<String> required;
  final String type;
  final AnnouncementDetailProperties properties;

  AnnouncementDetail({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory AnnouncementDetail.fromJson(Map<String, dynamic> json) => AnnouncementDetail(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: AnnouncementDetailProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
