import '../../../paths/car_place_slug/path_class/patch_responses/the_201_class/dealer/dealer.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';

class AnnouncementOfDayProperties {
  final IsComparisonClass id;
  final Dealer announcement;

  AnnouncementOfDayProperties({
    required this.id,
    required this.announcement,
  });

  factory AnnouncementOfDayProperties.fromJson(Map<String, dynamic> json) => AnnouncementOfDayProperties(
    id: IsComparisonClass.fromJson(json['id']),
    announcement: Dealer.fromJson(json['announcement']),
  );

  Map<String, dynamic> toJson() => {
    'id': id.toJson(),
    'announcement': announcement.toJson(),
  };
}
