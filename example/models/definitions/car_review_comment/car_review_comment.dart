import 'car_review_comment_properties/car_review_comment_properties.dart';

class CarReviewComment {
  final List<String> required;
  final String type;
  final CarReviewCommentProperties properties;

  CarReviewComment({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory CarReviewComment.fromJson(Map<String, dynamic> json) => CarReviewComment(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: CarReviewCommentProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
