import 'district_region_properties/district_region_properties.dart';

class DistrictRegion {
  final List<String> required;
  final String type;
  final DistrictRegionProperties properties;

  DistrictRegion({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory DistrictRegion.fromJson(Map<String, dynamic> json) => DistrictRegion(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: DistrictRegionProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
