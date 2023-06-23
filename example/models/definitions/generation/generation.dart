import '../../swagger_model.dart';
import 'generation_properties/generation_properties.dart';

class Generation {
  final List<String> required;
  final String type;
  final GenerationProperties properties;

  Generation({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory Generation.fromJson(Map<String, dynamic> json) => Generation(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: GenerationProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
