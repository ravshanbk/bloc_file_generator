import '../../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';

class PurpleGallery {
  final String type;
  final IsComparisonClass items;

  PurpleGallery({
    required this.type,
    required this.items,
  });

  factory PurpleGallery.fromJson(Map<String, dynamic> json) => PurpleGallery(
        type: json['type'],
        items: IsComparisonClass.fromJson(json['items']),
      );

  Map<String, dynamic> toJson() => {
        'type': type,
        'items': items.toJson(),
      };
}
