import 'car_place_list_properties/car_place_list_properties.dart';

class CarPlaceList {
  final List<String> required;
  final String type;
  final CarPlaceListProperties properties;

  CarPlaceList({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory CarPlaceList.fromJson(Map<String, dynamic> json) => CarPlaceList(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: CarPlaceListProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
