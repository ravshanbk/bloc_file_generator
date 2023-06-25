import '../../../paths/car_place_slug/path_class/patch_responses/the_201_class/dealer/dealer.dart';
import '../../annoncement_compare/annoncement_compare_properties/year/year.dart';
import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';
import '../../product/product_properties/body_type/body_type.dart';

class NotificationProperties {
  final IsComparisonClass id;
  final Dealer category;
  final ContactNameClass title;
  final IsComparisonClass cover;
  final ContactNameClass content;
  final IsComparisonClass createdAt;
  final Year readCount;
  final BodyType toAll;

  NotificationProperties({
    required this.id,
    required this.category,
    required this.title,
    required this.cover,
    required this.content,
    required this.createdAt,
    required this.readCount,
    required this.toAll,
  });

  factory NotificationProperties.fromJson(Map<String, dynamic> json) => NotificationProperties(
        id: IsComparisonClass.fromJson(json['id']),
        category: Dealer.fromJson(json['category']),
        title: ContactNameClass.fromJson(json['title']),
        cover: IsComparisonClass.fromJson(json['cover']),
        content: ContactNameClass.fromJson(json['content']),
        createdAt: IsComparisonClass.fromJson(json['created_at']),
        readCount: Year.fromJson(json['read_count']),
        toAll: BodyType.fromJson(json['to_all']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'category': category.toJson(),
        'title': title.toJson(),
        'cover': cover.toJson(),
        'content': content.toJson(),
        'created_at': createdAt.toJson(),
        'read_count': readCount.toJson(),
        'to_all': toAll.toJson(),
      };
}
