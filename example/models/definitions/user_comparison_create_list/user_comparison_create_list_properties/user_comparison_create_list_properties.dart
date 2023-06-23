import '../../annoncement_compare/annoncement_compare_properties/year/year.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';
import '../../product/product_properties/body_type/body_type.dart';

class UserComparisonCreateListProperties {
  final IsComparisonClass id;
  final BodyType announcement;
  final Year order;

  UserComparisonCreateListProperties({
    required this.id,
    required this.announcement,
    required this.order,
  });

  factory UserComparisonCreateListProperties.fromJson(Map<String, dynamic> json) => UserComparisonCreateListProperties(
        id: IsComparisonClass.fromJson(json['id']),
        announcement: BodyType.fromJson(json['announcement']),
        order: Year.fromJson(json['order']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'announcement': announcement.toJson(),
        'order': order.toJson(),
      };
}
