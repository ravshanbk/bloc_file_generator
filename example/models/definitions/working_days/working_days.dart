import '../../swagger_model.dart';
import 'car_place_working_days_properties/car_place_working_days_properties.dart';

class WorkingDays {
  final List<String> required;
  final String type;
  final CarPlaceWorkingDaysProperties properties;

  WorkingDays({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory WorkingDays.fromJson(Map<String, dynamic> json) => WorkingDays(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: CarPlaceWorkingDaysProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
