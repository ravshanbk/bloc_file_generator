import '../../../paths/car_place_slug/path_class/patch_responses/the_201_class/dealer/dealer.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';

class AnnouncementOptionProperties {
  final IsComparisonClass id;
  final Dealer option;
  final Dealer item;

  AnnouncementOptionProperties({
    required this.id,
    required this.option,
    required this.item,
  });

  factory AnnouncementOptionProperties.fromJson(Map<String, dynamic> json) => AnnouncementOptionProperties(
        id: IsComparisonClass.fromJson(json['id']),
        option: Dealer.fromJson(json['option']),
        item: Dealer.fromJson(json['item']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'option': option.toJson(),
        'item': item.toJson(),
      };
}
