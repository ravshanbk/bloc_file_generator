import '../../swagger_model.dart';
import 'car_place_properties/car_place_properties.dart';

class CarPlace {
  final List<String> required;
  final String type;
  final CarPlaceProperties properties;

  CarPlace({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory CarPlace.fromJson(Map<String, dynamic> json) => CarPlace(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: CarPlaceProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
