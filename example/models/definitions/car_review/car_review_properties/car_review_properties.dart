import '../../../paths/car_announcement_counter/car_annoucement_counter_get/car_place_category_list_parametr/fluffy_responses/fluffy_200/rent_with_purchase_class/rent_with_purchase.dart';
import '../../../paths/car_place_category_list/car_place_category_list_get/purple_responses/purple_200/schema/schema_properties/equipment_class/equipment_class.dart';
import '../../../paths/car_place_slug/path_class/patch_responses/the_201_class/dealer/dealer.dart';
import '../../annoncement_compare/annoncement_compare_properties/year/year.dart';
import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';
import '../../car_review_create_update/car_review_create_update_properties/tives/tives.dart';
import '../../product/product_properties/body_type/body_type.dart';
import '../../working_days/car_place_working_days_properties/currency/currency.dart';

class CarReviewProperties {
  final IsComparisonClass id;
  final Dealer make;
  final Dealer model;
  final Dealer generation;
  final Dealer bodyType;
  final Dealer driveType;
  final Dealer engineType;
  final Dealer gearboxType;
  final Dealer modificationType;
  final ContactNameClass absoluteCarName;
  final ContactNameClass title;
  final ContactNameClass comment;
  final ContactNameClass tenure;
  final Tives positives;
  final Tives negatives;
  final EquipmentClass avgStar;
  final RentWithPurchaseClass starAnswers;
  final Currency status;
  final BodyType archived;
  final IsComparisonClass isMine;
  final Year viewsCount;
  final Year commentsCount;

  CarReviewProperties({
    required this.id,
    required this.make,
    required this.model,
    required this.generation,
    required this.bodyType,
    required this.driveType,
    required this.engineType,
    required this.gearboxType,
    required this.modificationType,
    required this.absoluteCarName,
    required this.title,
    required this.comment,
    required this.tenure,
    required this.positives,
    required this.negatives,
    required this.avgStar,
    required this.starAnswers,
    required this.status,
    required this.archived,
    required this.isMine,
    required this.viewsCount,
    required this.commentsCount,
  });

  factory CarReviewProperties.fromJson(Map<String, dynamic> json) => CarReviewProperties(
    id: IsComparisonClass.fromJson(json['id']),
    make: Dealer.fromJson(json['make']),
    model: Dealer.fromJson(json['model']),
    generation: Dealer.fromJson(json['generation']),
    bodyType: Dealer.fromJson(json['body_type']),
    driveType: Dealer.fromJson(json['drive_type']),
    engineType: Dealer.fromJson(json['engine_type']),
    gearboxType: Dealer.fromJson(json['gearbox_type']),
    modificationType: Dealer.fromJson(json['modification_type']),
    absoluteCarName: ContactNameClass.fromJson(json['absolute_car_name']),
    title: ContactNameClass.fromJson(json['title']),
    comment: ContactNameClass.fromJson(json['comment']),
    tenure: ContactNameClass.fromJson(json['tenure']),
    positives: Tives.fromJson(json['positives']),
    negatives: Tives.fromJson(json['negatives']),
    avgStar: EquipmentClass.fromJson(json['avg_star']),
    starAnswers: RentWithPurchaseClass.fromJson(json['star_answers']),
    status: Currency.fromJson(json['status']),
    archived: BodyType.fromJson(json['archived']),
    isMine: IsComparisonClass.fromJson(json['is_mine']),
    viewsCount: Year.fromJson(json['views_count']),
    commentsCount: Year.fromJson(json['comments_count']),
  );

  Map<String, dynamic> toJson() => {
    'id': id.toJson(),
    'make': make.toJson(),
    'model': model.toJson(),
    'generation': generation.toJson(),
    'body_type': bodyType.toJson(),
    'drive_type': driveType.toJson(),
    'engine_type': engineType.toJson(),
    'gearbox_type': gearboxType.toJson(),
    'modification_type': modificationType.toJson(),
    'absolute_car_name': absoluteCarName.toJson(),
    'title': title.toJson(),
    'comment': comment.toJson(),
    'tenure': tenure.toJson(),
    'positives': positives.toJson(),
    'negatives': negatives.toJson(),
    'avg_star': avgStar.toJson(),
    'star_answers': starAnswers.toJson(),
    'status': status.toJson(),
    'archived': archived.toJson(),
    'is_mine': isMine.toJson(),
    'views_count': viewsCount.toJson(),
    'comments_count': commentsCount.toJson(),
  };
}
