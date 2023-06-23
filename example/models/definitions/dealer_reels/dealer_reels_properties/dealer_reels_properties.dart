import '../../../paths/car_place_slug/path_class/patch_responses/the_201_class/dealer/dealer.dart';
import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';

class DealerReelsProperties {
  final IsComparisonClass id;
  final ContactNameClass name;
  final Dealer avatar;
  final ContactNameClass slug;

  DealerReelsProperties({
    required this.id,
    required this.name,
    required this.avatar,
    required this.slug,
  });

  factory DealerReelsProperties.fromJson(Map<String, dynamic> json) => DealerReelsProperties(
        id: IsComparisonClass.fromJson(json['id']),
        name: ContactNameClass.fromJson(json['name']),
        avatar: Dealer.fromJson(json['avatar']),
        slug: ContactNameClass.fromJson(json['slug']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'name': name.toJson(),
        'avatar': avatar.toJson(),
        'slug': slug.toJson(),
      };
}
