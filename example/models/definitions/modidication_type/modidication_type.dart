import '../../swagger_model.dart';
import 'modidication_type_properties/modidication_type_properties.dart';

class ModificationType {
  final List<String> required;
  final String type;
  final ModificationTypeProperties properties;

  ModificationType({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory ModificationType.fromJson(Map<String, dynamic> json) => ModificationType(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: ModificationTypeProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
