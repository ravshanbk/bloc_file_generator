import '../../swagger_model.dart';
import 'rent_properties/rent_properties.dart';

class Rent {
  final List<String> required;
  final String type;
  final RentProperties properties;

  Rent({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory Rent.fromJson(Map<String, dynamic> json) => Rent(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: RentProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
