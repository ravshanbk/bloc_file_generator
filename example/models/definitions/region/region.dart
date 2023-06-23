import 'region_properties/region_properties.dart';

class Region {
  final List<String> required;
  final String type;
  final RegionProperties properties;

  Region({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory Region.fromJson(Map<String, dynamic> json) => Region(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: RegionProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
