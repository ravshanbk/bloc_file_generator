import '../../../paths/car_place_slug/path_class/patch_responses/the_201_class/dealer/dealer.dart';
import '../../annoncement_compare/annoncement_compare_properties/year/year.dart';

class CarReviewStarAnswerDetailProperties {
  final Dealer question;
  final Year starCount;

  CarReviewStarAnswerDetailProperties({
    required this.question,
    required this.starCount,
  });

  factory CarReviewStarAnswerDetailProperties.fromJson(Map<String, dynamic> json) =>
      CarReviewStarAnswerDetailProperties(
        question: Dealer.fromJson(json['question']),
        starCount: Year.fromJson(json['star_count']),
      );

  Map<String, dynamic> toJson() => {
        'question': question.toJson(),
        'star_count': starCount.toJson(),
      };
}
