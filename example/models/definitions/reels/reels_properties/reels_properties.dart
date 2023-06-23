import '../../../paths/car_place_slug/path_class/patch_responses/the_201_class/dealer/dealer.dart';
import '../../annoncement_compare/annoncement_compare_properties/year/year.dart';
import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';
import '../../product/product_properties/body_type/body_type.dart';

class DetailReelsProperties {
  final IsComparisonClass id;
  final ContactNameClass title;
  final IsComparisonClass content;
  final Dealer dealer;
  final Dealer user;
  final Year likeCount;
  final Year shareCount;
  final Dealer announcement;
  final IsComparisonClass? isLiked;
  final BodyType? isOfferOfTheDay;

  DetailReelsProperties({
    required this.id,
    required this.title,
    required this.content,
    required this.dealer,
    required this.user,
    required this.likeCount,
    required this.shareCount,
    required this.announcement,
    this.isLiked,
    this.isOfferOfTheDay,
  });

  factory DetailReelsProperties.fromJson(Map<String, dynamic> json) => DetailReelsProperties(
    id: IsComparisonClass.fromJson(json['id']),
    title: ContactNameClass.fromJson(json['title']),
    content: IsComparisonClass.fromJson(json['content']),
    dealer: Dealer.fromJson(json['dealer']),
    user: Dealer.fromJson(json['user']),
    likeCount: Year.fromJson(json['like_count']),
    shareCount: Year.fromJson(json['share_count']),
    announcement: Dealer.fromJson(json['announcement']),
    isLiked: json['is_liked'] == null ? null : IsComparisonClass.fromJson(json['is_liked']),
    isOfferOfTheDay: json['is_offer_of_the_day'] == null ? null : BodyType.fromJson(json['is_offer_of_the_day']),
  );

  Map<String, dynamic> toJson() => {
    'id': id.toJson(),
    'title': title.toJson(),
    'content': content.toJson(),
    'dealer': dealer.toJson(),
    'user': user.toJson(),
    'like_count': likeCount.toJson(),
    'share_count': shareCount.toJson(),
    'announcement': announcement.toJson(),
    'is_liked': isLiked?.toJson(),
    'is_offer_of_the_day': isOfferOfTheDay?.toJson(),
  };
}
