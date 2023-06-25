import 'annoncement_compare_properties/annoncement_compare_properties.dart';

class AnnouncementCompare {
  final List<String> required;
  final String type;
  final AnnouncementCompareProperties properties;

  AnnouncementCompare({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory AnnouncementCompare.fromJson(Map<String, dynamic> json) => AnnouncementCompare(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: AnnouncementCompareProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
