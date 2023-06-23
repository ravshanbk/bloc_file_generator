import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';

class CarReviewCommentCreateUpdateProperties {
  final IsComparisonClass id;
  final ContactNameClass text;
  final IsComparisonClass createdAt;

  CarReviewCommentCreateUpdateProperties({
    required this.id,
    required this.text,
    required this.createdAt,
  });

  factory CarReviewCommentCreateUpdateProperties.fromJson(Map<String, dynamic> json) =>
      CarReviewCommentCreateUpdateProperties(
        id: IsComparisonClass.fromJson(json['id']),
        text: ContactNameClass.fromJson(json['text']),
        createdAt: IsComparisonClass.fromJson(json['created_at']),
      );

  Map<String, dynamic> toJson() => {
    'id': id.toJson(),
    'text': text.toJson(),
    'created_at': createdAt.toJson(),
  };
}
