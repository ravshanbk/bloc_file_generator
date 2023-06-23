import '../../../paths/car_place_slug/path_class/patch_responses/the_201_class/dealer/dealer.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';
import '../../product/product_properties/body_type/body_type.dart';

class ProjectSocialAuthsProperties {
  final IsComparisonClass id;
  final Dealer usedSocialAuth;
  final BodyType isAvailable;

  ProjectSocialAuthsProperties({
    required this.id,
    required this.usedSocialAuth,
    required this.isAvailable,
  });

  factory ProjectSocialAuthsProperties.fromJson(Map<String, dynamic> json) => ProjectSocialAuthsProperties(
        id: IsComparisonClass.fromJson(json['id']),
        usedSocialAuth: Dealer.fromJson(json['used_social_auth']),
        isAvailable: BodyType.fromJson(json['is_available']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'used_social_auth': usedSocialAuth.toJson(),
        'is_available': isAvailable.toJson(),
      };
}
