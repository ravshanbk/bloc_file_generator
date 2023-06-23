import '../../annoncement_compare/annoncement_compare_properties/year/year.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';
import '../../product/product_properties/body_type/body_type.dart';

class UserCountDataProperties {
  final IsComparisonClass id;
  final BodyType user;
  final Year announcementWishlistCount;
  final Year announcementsCount;
  final Year searchCount;
  final Year reviewsCount;
  final Year filterHistoryCount;

  UserCountDataProperties({
    required this.id,
    required this.user,
    required this.announcementWishlistCount,
    required this.announcementsCount,
    required this.searchCount,
    required this.reviewsCount,
    required this.filterHistoryCount,
  });

  factory UserCountDataProperties.fromJson(Map<String, dynamic> json) => UserCountDataProperties(
    id: IsComparisonClass.fromJson(json['id']),
    user: BodyType.fromJson(json['user']),
    announcementWishlistCount: Year.fromJson(json['announcement_wishlist_count']),
    announcementsCount: Year.fromJson(json['announcements_count']),
    searchCount: Year.fromJson(json['search_count']),
    reviewsCount: Year.fromJson(json['reviews_count']),
    filterHistoryCount: Year.fromJson(json['filter_history_count']),
  );

  Map<String, dynamic> toJson() => {
    'id': id.toJson(),
    'user': user.toJson(),
    'announcement_wishlist_count': announcementWishlistCount.toJson(),
    'announcements_count': announcementsCount.toJson(),
    'search_count': searchCount.toJson(),
    'reviews_count': reviewsCount.toJson(),
    'filter_history_count': filterHistoryCount.toJson(),
  };
}
