import '../../product/product_properties/body_type/body_type.dart';

class UserWishlistProperties {
  final BodyType announcement;

  UserWishlistProperties({
    required this.announcement,
  });

  factory UserWishlistProperties.fromJson(Map<String, dynamic> json) => UserWishlistProperties(
        announcement: BodyType.fromJson(json['announcement']),
      );

  Map<String, dynamic> toJson() => {
        'announcement': announcement.toJson(),
      };
}
