import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';

class UserShortInfoProperties {
  final ContactNameClass fullName;
  final IsComparisonClass image;

  UserShortInfoProperties({
    required this.fullName,
    required this.image,
  });

  factory UserShortInfoProperties.fromJson(Map<String, dynamic> json) => UserShortInfoProperties(
        fullName: ContactNameClass.fromJson(json['full_name']),
        image: IsComparisonClass.fromJson(json['image']),
      );

  Map<String, dynamic> toJson() => {
        'full_name': fullName.toJson(),
        'image': image.toJson(),
      };
}
