import '../../swagger_model.dart';

class Equipment {
  final List<String> required;
  final String type;
  final EquipmentProperties properties;

  Equipment({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory Equipment.fromJson(Map<String, dynamic> json) => Equipment(
    required: List<String>.from(json['required'].map((x) => x)),
    type: json['type'],
    properties: EquipmentProperties.fromJson(json['properties']),
  );

  Map<String, dynamic> toJson() => {
    'required': List<dynamic>.from(required.map((x) => x)),
    'type': type,
    'properties': properties.toJson(),
  };
}
