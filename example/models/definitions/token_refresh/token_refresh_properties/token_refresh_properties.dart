import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';

class TokenRefreshProperties {
  final ContactNameClass refresh;
  final IsComparisonClass access;

  TokenRefreshProperties({
    required this.refresh,
    required this.access,
  });

  factory TokenRefreshProperties.fromJson(Map<String, dynamic> json) => TokenRefreshProperties(
        refresh: ContactNameClass.fromJson(json['refresh']),
        access: IsComparisonClass.fromJson(json['access']),
      );

  Map<String, dynamic> toJson() => {
        'refresh': refresh.toJson(),
        'access': access.toJson(),
      };
}
