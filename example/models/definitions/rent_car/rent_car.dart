import '../../swagger_model.dart';
import 'rent_car_properties/rent_car_properties.dart';

class RentCar {
  final List<String> required;
  final String type;
  final RentCarProperties properties;

  RentCar({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory RentCar.fromJson(Map<String, dynamic> json) => RentCar(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: RentCarProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
