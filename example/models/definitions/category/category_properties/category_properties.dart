import '../../../paths/car_announcement_counter/car_annoucement_counter_get/car_place_category_list_parametr/fluffy_responses/fluffy_200/rent_with_purchase_class/rent_with_purchase.dart';
import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';
import '../../make/make_properties/slug/slug.dart';
import '../../product/product_properties/body_type/body_type.dart';

class CategoryProperties {
  final IsComparisonClass id;
  final ContactNameClass name;
  final Slug slug;
  final IsComparisonClass coverImageThumbnail;
  final BodyType isRead;
  final RentWithPurchaseClass items;

  CategoryProperties({
    required this.id,
    required this.name,
    required this.slug,
    required this.coverImageThumbnail,
    required this.isRead,
    required this.items,
  });

  factory CategoryProperties.fromJson(Map<String, dynamic> json) => CategoryProperties(
        id: IsComparisonClass.fromJson(json['id']),
        name: ContactNameClass.fromJson(json['name']),
        slug: Slug.fromJson(json['slug']),
        coverImageThumbnail: IsComparisonClass.fromJson(json['cover_image_thumbnail']),
        isRead: BodyType.fromJson(json['is_read']),
        items: RentWithPurchaseClass.fromJson(json['items']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'name': name.toJson(),
        'slug': slug.toJson(),
        'cover_image_thumbnail': coverImageThumbnail.toJson(),
        'is_read': isRead.toJson(),
        'items': items.toJson(),
      };
}
