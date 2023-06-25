import 'car_review_comment_user_properties/car_review_comment_user_properties.dart';

class CarReviewCommentUser {
  final String type;
  final CarReviewCommentUserProperties properties;

  CarReviewCommentUser({
    required this.type,
    required this.properties,
  });

  factory CarReviewCommentUser.fromJson(Map<String, dynamic> json) => CarReviewCommentUser(
        type: json['type'],
        properties: CarReviewCommentUserProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'type': type,
        'properties': properties.toJson(),
      };
}
