import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';

class CarReviewQuestionProperties {
  final IsComparisonClass id;
  final ContactNameClass title;

  CarReviewQuestionProperties({
    required this.id,
    required this.title,
  });

  factory CarReviewQuestionProperties.fromJson(Map<String, dynamic> json) => CarReviewQuestionProperties(
        id: IsComparisonClass.fromJson(json['id']),
        title: ContactNameClass.fromJson(json['title']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'title': title.toJson(),
      };
}
