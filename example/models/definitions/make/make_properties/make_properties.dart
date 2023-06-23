import '../../../swagger_model.dart';
import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';
import 'slug/slug.dart';

class MakeProperties {
  final IsComparisonClass id;
  final ContactNameClass name;
  final Slug slug;
  final IsComparisonClass logo;

  MakeProperties({
    required this.id,
    required this.name,
    required this.slug,
    required this.logo,
  });

  factory MakeProperties.fromJson(Map<String, dynamic> json) => MakeProperties(
        id: IsComparisonClass.fromJson(json['id']),
        name: ContactNameClass.fromJson(json['name']),
        slug: Slug.fromJson(json['slug']),
        logo: IsComparisonClass.fromJson(json['logo']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'name': name.toJson(),
        'slug': slug.toJson(),
        'logo': logo.toJson(),
      };
}
