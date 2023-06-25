import 'car_damage_part_properties/car_damage_part_properties.dart';

class CarDamagedPart {
  final List<String> required;
  final String type;
  final CarDamagedPartProperties properties;

  CarDamagedPart({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory CarDamagedPart.fromJson(Map<String, dynamic> json) => CarDamagedPart(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: CarDamagedPartProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
