import '../../../../../../swagger_model.dart';
import 'schema_properties/schema_properties.dart';

class Schema {
  final List<String> required;
  final String type;
  final SchemaProperties properties;

  Schema({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory Schema.fromJson(Map<String, dynamic> json) => Schema(
    required: List<String>.from(json['required'].map((x) => x)),
    type: json['type'],
    properties: SchemaProperties.fromJson(json['properties']),
  );

  Map<String, dynamic> toJson() => {
    'required': List<dynamic>.from(required.map((x) => x)),
    'type': type,
    'properties': properties.toJson(),
  };
}
