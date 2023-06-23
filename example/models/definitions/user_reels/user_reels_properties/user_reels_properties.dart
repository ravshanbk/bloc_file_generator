import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';

class UserReelsProperties {
  final IsComparisonClass id;
  final ContactNameClass firstName;
  final ContactNameClass lastName;
  final IsComparisonClass image;

  UserReelsProperties({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.image,
  });

  factory UserReelsProperties.fromJson(Map<String, dynamic> json) => UserReelsProperties(
        id: IsComparisonClass.fromJson(json['id']),
        firstName: ContactNameClass.fromJson(json['first_name']),
        lastName: ContactNameClass.fromJson(json['last_name']),
        image: IsComparisonClass.fromJson(json['image']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'first_name': firstName.toJson(),
        'last_name': lastName.toJson(),
        'image': image.toJson(),
      };
}
