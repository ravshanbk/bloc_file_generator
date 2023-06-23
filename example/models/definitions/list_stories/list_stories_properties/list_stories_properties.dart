import '../../../paths/car_place_category_list/car_place_category_list_get/purple_responses/purple_200/schema/schema_properties/equipment_class/equipment_class.dart';
import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';
import '../../product/product_properties/body_type/body_type.dart';
import '../../working_days/car_place_working_days_properties/currency/currency.dart';

class ListStoriesProperties {
  final IsComparisonClass id;
  final ContactNameClass title;
  final EquipmentClass description;
  final IsComparisonClass content;
  final IsComparisonClass icon;
  final EquipmentClass url;
  final BodyType expired;
  final Currency redirectTo;
  final EquipmentClass redirectData;
  final IsComparisonClass isRead;

  ListStoriesProperties({
    required this.id,
    required this.title,
    required this.description,
    required this.content,
    required this.icon,
    required this.url,
    required this.expired,
    required this.redirectTo,
    required this.redirectData,
    required this.isRead,
  });

  factory ListStoriesProperties.fromJson(Map<String, dynamic> json) => ListStoriesProperties(
        id: IsComparisonClass.fromJson(json['id']),
        title: ContactNameClass.fromJson(json['title']),
        description: EquipmentClass.fromJson(json['description']),
        content: IsComparisonClass.fromJson(json['content']),
        icon: IsComparisonClass.fromJson(json['icon']),
        url: EquipmentClass.fromJson(json['url']),
        expired: BodyType.fromJson(json['expired']),
        redirectTo: Currency.fromJson(json['redirect_to']),
        redirectData: EquipmentClass.fromJson(json['redirect_data']),
        isRead: IsComparisonClass.fromJson(json['is_read']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'title': title.toJson(),
        'description': description.toJson(),
        'content': content.toJson(),
        'icon': icon.toJson(),
        'url': url.toJson(),
        'expired': expired.toJson(),
        'redirect_to': redirectTo.toJson(),
        'redirect_data': redirectData.toJson(),
        'is_read': isRead.toJson(),
      };
}
