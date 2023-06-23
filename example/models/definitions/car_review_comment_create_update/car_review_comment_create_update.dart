
import 'car_review_comment_create_update_properties/car_review_comment_create_update_properties.dart';

class CarReviewCommentCreateUpdate {
  final List<String> required;
  final String type;
  final CarReviewCommentCreateUpdateProperties properties;

  CarReviewCommentCreateUpdate({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory CarReviewCommentCreateUpdate.fromJson(Map<String, dynamic> json) => CarReviewCommentCreateUpdate(
    required: List<String>.from(json['required'].map((x) => x)),
    type: json['type'],
    properties: CarReviewCommentCreateUpdateProperties.fromJson(json['properties']),
  );

  Map<String, dynamic> toJson() => {
    'required': List<dynamic>.from(required.map((x) => x)),
    'type': type,
    'properties': properties.toJson(),
  };
}
