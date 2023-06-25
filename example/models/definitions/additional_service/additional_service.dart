import 'additional_service_properties/additional_service_properties.dart';

class AdditionalService {
  final List<String> required;
  final String type;
  final AdditionalServiceProperties properties;

  AdditionalService({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory AdditionalService.fromJson(Map<String, dynamic> json) => AdditionalService(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: AdditionalServiceProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
