import 'dealer_cars_properties/dealer_cars_properties.dart';

class DealerCars {
  final List<String> required;
  final String type;
  final DealerCarsProperties properties;

  DealerCars({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory DealerCars.fromJson(Map<String, dynamic> json) => DealerCars(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: DealerCarsProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
