import '../../../paths/car_place_slug/path_class/patch_responses/the_201_class/dealer/dealer.dart';
import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';
import '../../product/product_properties/body_type/body_type.dart';

class CarReviewCommentProperties {
  final IsComparisonClass id;
  final Dealer user;
  final ContactNameClass text;
  final IsComparisonClass createdAt;
  final IsComparisonClass updatedAt;
  final BodyType edited;

  CarReviewCommentProperties({
    required this.id,
    required this.user,
    required this.text,
    required this.createdAt,
    required this.updatedAt,
    required this.edited,
  });

  factory CarReviewCommentProperties.fromJson(Map<String, dynamic> json) => CarReviewCommentProperties(
        id: IsComparisonClass.fromJson(json['id']),
        user: Dealer.fromJson(json['user']),
        text: ContactNameClass.fromJson(json['text']),
        createdAt: IsComparisonClass.fromJson(json['created_at']),
        updatedAt: IsComparisonClass.fromJson(json['updated_at']),
        edited: BodyType.fromJson(json['edited']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'user': user.toJson(),
        'text': text.toJson(),
        'created_at': createdAt.toJson(),
        'updated_at': updatedAt.toJson(),
        'edited': edited.toJson(),
      };
}
