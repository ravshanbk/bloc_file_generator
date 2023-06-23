import '../../swagger_model.dart';
import 'car_review_star_answer_detail_properties/car_review_star_answer_detail_properties.dart';

class CarReviewStarAnswerDetail {
  final List<String> required;
  final String type;
  final CarReviewStarAnswerDetailProperties properties;

  CarReviewStarAnswerDetail({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory CarReviewStarAnswerDetail.fromJson(Map<String, dynamic> json) => CarReviewStarAnswerDetail(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: CarReviewStarAnswerDetailProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
