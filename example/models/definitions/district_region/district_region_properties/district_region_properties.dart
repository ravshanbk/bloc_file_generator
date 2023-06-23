import '../../../paths/car_place_slug/path_class/patch_responses/the_201_class/dealer/dealer.dart';
import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';

class DistrictRegionProperties {
  final IsComparisonClass id;
  final ContactNameClass title;
  final Dealer region;

  DistrictRegionProperties({
    required this.id,
    required this.title,
    required this.region,
  });

  factory DistrictRegionProperties.fromJson(Map<String, dynamic> json) => DistrictRegionProperties(
    id: IsComparisonClass.fromJson(json['id']),
    title: ContactNameClass.fromJson(json['title']),
    region: Dealer.fromJson(json['region']),
  );

  Map<String, dynamic> toJson() => {
    'id': id.toJson(),
    'title': title.toJson(),
    'region': region.toJson(),
  };
}
