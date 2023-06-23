import '../../annoncement_compare/annoncement_compare_properties/year/year.dart';
import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';

class AnnouncementAddingPhotoInstructionsProperties {
  final IsComparisonClass id;
  final Year order;
  final ContactNameClass description;
  final IsComparisonClass image;

  AnnouncementAddingPhotoInstructionsProperties({
    required this.id,
    required this.order,
    required this.description,
    required this.image,
  });

  factory AnnouncementAddingPhotoInstructionsProperties.fromJson(Map<String, dynamic> json) =>
      AnnouncementAddingPhotoInstructionsProperties(
        id: IsComparisonClass.fromJson(json['id']),
        order: Year.fromJson(json['order']),
        description: ContactNameClass.fromJson(json['description']),
        image: IsComparisonClass.fromJson(json['image']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'order': order.toJson(),
        'description': description.toJson(),
        'image': image.toJson(),
      };
}
