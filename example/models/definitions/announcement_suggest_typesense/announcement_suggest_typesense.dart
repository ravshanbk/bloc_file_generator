import 'announcement_suggest_typesense_properties/announcement_suggest_typesense_properties.dart';

class AnnouncementSuggestTypesense {
  final List<String> required;
  final String type;
  final AnnouncementSuggestTypesenseProperties properties;

  AnnouncementSuggestTypesense({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory AnnouncementSuggestTypesense.fromJson(Map<String, dynamic> json) => AnnouncementSuggestTypesense(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: AnnouncementSuggestTypesenseProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
