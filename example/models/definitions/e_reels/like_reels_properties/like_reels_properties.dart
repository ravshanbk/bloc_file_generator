import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';
import '../../product/product_properties/body_type/body_type.dart';

class LikeReelsProperties {
  final IsComparisonClass id;
  final BodyType reel;

  LikeReelsProperties({
    required this.id,
    required this.reel,
  });

  factory LikeReelsProperties.fromJson(Map<String, dynamic> json) => LikeReelsProperties(
        id: IsComparisonClass.fromJson(json['id']),
        reel: BodyType.fromJson(json['reel']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'reel': reel.toJson(),
      };
}
