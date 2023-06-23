import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';
import '../../product/product_properties/body_type/body_type.dart';

class AnnouncementCallProperties {
  final IsComparisonClass id;
  final BodyType announcement;
  final IsComparisonClass user;

  AnnouncementCallProperties({
    required this.id,
    required this.announcement,
    required this.user,
  });

  factory AnnouncementCallProperties.fromJson(Map<String, dynamic> json) => AnnouncementCallProperties(
        id: IsComparisonClass.fromJson(json['id']),
        announcement: BodyType.fromJson(json['announcement']),
        user: IsComparisonClass.fromJson(json['user']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'announcement': announcement.toJson(),
        'user': user.toJson(),
      };
}
