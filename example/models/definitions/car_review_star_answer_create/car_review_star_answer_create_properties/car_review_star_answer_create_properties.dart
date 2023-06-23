import '../../annoncement_compare/annoncement_compare_properties/year/year.dart';
import '../../product/product_properties/body_type/body_type.dart';

class CarReviewStarAnswerCreateProperties {
  final BodyType question;
  final Year starCount;

  CarReviewStarAnswerCreateProperties({
    required this.question,
    required this.starCount,
  });

  factory CarReviewStarAnswerCreateProperties.fromJson(Map<String, dynamic> json) =>
      CarReviewStarAnswerCreateProperties(
        question: BodyType.fromJson(json['question']),
        starCount: Year.fromJson(json['star_count']),
      );

  Map<String, dynamic> toJson() => {
        'question': question.toJson(),
        'star_count': starCount.toJson(),
      };
}
