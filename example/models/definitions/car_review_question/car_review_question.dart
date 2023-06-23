import 'car_review_question_properties/car_review_question_properties.dart';

class CarReviewQuestion {
  final List<String> required;
  final String type;
  final CarReviewQuestionProperties properties;

  CarReviewQuestion({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory CarReviewQuestion.fromJson(Map<String, dynamic> json) => CarReviewQuestion(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: CarReviewQuestionProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
