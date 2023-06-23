import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';

class CarReviewCommentUserProperties {
  final IsComparisonClass id;
  final ContactNameClass fullName;
  final IsComparisonClass image;

  CarReviewCommentUserProperties({
    required this.id,
    required this.fullName,
    required this.image,
  });

  factory CarReviewCommentUserProperties.fromJson(Map<String, dynamic> json) => CarReviewCommentUserProperties(
        id: IsComparisonClass.fromJson(json['id']),
        fullName: ContactNameClass.fromJson(json['full_name']),
        image: IsComparisonClass.fromJson(json['image']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'full_name': fullName.toJson(),
        'image': image.toJson(),
      };
}
