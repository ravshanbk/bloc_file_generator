import '../../../paths/car_place_category_list/car_place_category_list_get/purple_responses/purple_200/schema/schema_properties/equipment_class/equipment_class.dart';
import '../../../paths/car_place_slug/path_class/patch_responses/the_201_class/dealer/dealer.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';
import '../../product/product_properties/body_type/body_type.dart';

class UserNotificationProperties {
  final IsComparisonClass id;
  final Dealer notification;
  final EquipmentClass user;
  final BodyType isRead;

  UserNotificationProperties({
    required this.id,
    required this.notification,
    required this.user,
    required this.isRead,
  });

  factory UserNotificationProperties.fromJson(Map<String, dynamic> json) => UserNotificationProperties(
        id: IsComparisonClass.fromJson(json['id']),
        notification: Dealer.fromJson(json['notification']),
        user: EquipmentClass.fromJson(json['user']),
        isRead: BodyType.fromJson(json['is_read']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'notification': notification.toJson(),
        'user': user.toJson(),
        'is_read': isRead.toJson(),
      };
}
