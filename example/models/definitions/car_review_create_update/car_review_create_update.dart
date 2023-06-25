import 'car_review_create_update_properties/car_review_create_update_properties.dart';

class CarReviewCreateUpdate {
  final List<String> required;
  final String type;
  final CarReviewCreateUpdateProperties properties;

  CarReviewCreateUpdate({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory CarReviewCreateUpdate.fromJson(Map<String, dynamic> json) => CarReviewCreateUpdate(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: CarReviewCreateUpdateProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
