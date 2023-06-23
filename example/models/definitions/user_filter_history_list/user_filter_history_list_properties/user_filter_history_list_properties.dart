import '../../../paths/car_announcement_counter/car_annoucement_counter_get/car_place_category_list_parametr/fluffy_responses/fluffy_200/rent_with_purchase_class/rent_with_purchase.dart';
import '../../../paths/car_place_slug/path_class/patch_responses/the_201_class/dealer/dealer.dart';
import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';
import '../../product/product_properties/body_type/body_type.dart';

class UserFilterHistoryListProperties {
  final IsComparisonClass id;
  final BodyType user;
  final Dealer make;
  final RentWithPurchaseClass model;
  final ContactNameClass query;
  final BodyType queryData;

  UserFilterHistoryListProperties({
    required this.id,
    required this.user,
    required this.make,
    required this.model,
    required this.query,
    required this.queryData,
  });

  factory UserFilterHistoryListProperties.fromJson(Map<String, dynamic> json) => UserFilterHistoryListProperties(
        id: IsComparisonClass.fromJson(json['id']),
        user: BodyType.fromJson(json['user']),
        make: Dealer.fromJson(json['make']),
        model: RentWithPurchaseClass.fromJson(json['model']),
        query: ContactNameClass.fromJson(json['query']),
        queryData: BodyType.fromJson(json['query_data']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'user': user.toJson(),
        'make': make.toJson(),
        'model': model.toJson(),
        'query': query.toJson(),
        'query_data': queryData.toJson(),
      };
}
