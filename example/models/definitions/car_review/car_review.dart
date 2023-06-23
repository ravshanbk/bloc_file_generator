import '../../swagger_model.dart';
import 'car_review_properties/car_review_properties.dart';

class CarReview {
  final List<String> required;
  final String type;
  final CarReviewProperties properties;

  CarReview({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory CarReview.fromJson(Map<String, dynamic> json) => CarReview(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: CarReviewProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
