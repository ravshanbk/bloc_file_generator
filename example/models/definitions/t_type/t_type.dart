import 'body_type_properties/body_type_properties.dart';

class TType {
  final List<String> required;
  final String type;
  final BodyTypeProperties properties;

  TType({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory TType.fromJson(Map<String, dynamic> json) => TType(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: BodyTypeProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
