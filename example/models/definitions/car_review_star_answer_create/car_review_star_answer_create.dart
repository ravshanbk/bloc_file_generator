import 'car_review_star_answer_create_properties/car_review_star_answer_create_properties.dart';

class CarReviewStarAnswerCreate {
  final List<String> required;
  final String type;
  final CarReviewStarAnswerCreateProperties properties;

  CarReviewStarAnswerCreate({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory CarReviewStarAnswerCreate.fromJson(Map<String, dynamic> json) => CarReviewStarAnswerCreate(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: CarReviewStarAnswerCreateProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
