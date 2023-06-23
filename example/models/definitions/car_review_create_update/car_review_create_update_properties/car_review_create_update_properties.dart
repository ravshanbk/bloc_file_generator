import '../../../paths/car_announcement_counter/car_annoucement_counter_get/car_place_category_list_parametr/fluffy_responses/fluffy_200/rent_with_purchase_class/rent_with_purchase.dart';
import '../../../paths/car_place_category_list/car_place_category_list_get/purple_responses/purple_200/schema/schema_properties/equipment_class/equipment_class.dart';
import '../../../swagger_model.dart';
import '../../annoncement_compare/annoncement_compare_properties/year/year.dart';
import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';
import '../../product/product_properties/body_type/body_type.dart';
import 'tives/tives.dart';

class CarReviewCreateUpdateProperties {
  final IsComparisonClass id;
  final ContactNameClass title;
  final ContactNameClass comment;
  final ContactNameClass tenure;
  final Tives positives;
  final Tives negatives;
  final IsComparisonClass avgStar;
  final RentWithPurchaseClass starAnswers;
  final BodyType make;
  final BodyType model;
  final EquipmentClass generation;
  final EquipmentClass bodyType;
  final EquipmentClass driveType;
  final EquipmentClass engineType;
  final EquipmentClass gearboxType;
  final Year year;
  final EquipmentClass modificationType;

  CarReviewCreateUpdateProperties({
    required this.id,
    required this.title,
    required this.comment,
    required this.tenure,
    required this.positives,
    required this.negatives,
    required this.avgStar,
    required this.starAnswers,
    required this.make,
    required this.model,
    required this.generation,
    required this.bodyType,
    required this.driveType,
    required this.engineType,
    required this.gearboxType,
    required this.year,
    required this.modificationType,
  });

  factory CarReviewCreateUpdateProperties.fromJson(Map<String, dynamic> json) => CarReviewCreateUpdateProperties(
        id: IsComparisonClass.fromJson(json['id']),
        title: ContactNameClass.fromJson(json['title']),
        comment: ContactNameClass.fromJson(json['comment']),
        tenure: ContactNameClass.fromJson(json['tenure']),
        positives: Tives.fromJson(json['positives']),
        negatives: Tives.fromJson(json['negatives']),
        avgStar: IsComparisonClass.fromJson(json['avg_star']),
        starAnswers: RentWithPurchaseClass.fromJson(json['star_answers']),
        make: BodyType.fromJson(json['make']),
        model: BodyType.fromJson(json['model']),
        generation: EquipmentClass.fromJson(json['generation']),
        bodyType: EquipmentClass.fromJson(json['body_type']),
        driveType: EquipmentClass.fromJson(json['drive_type']),
        engineType: EquipmentClass.fromJson(json['engine_type']),
        gearboxType: EquipmentClass.fromJson(json['gearbox_type']),
        year: Year.fromJson(json['year']),
        modificationType: EquipmentClass.fromJson(json['modification_type']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'title': title.toJson(),
        'comment': comment.toJson(),
        'tenure': tenure.toJson(),
        'positives': positives.toJson(),
        'negatives': negatives.toJson(),
        'avg_star': avgStar.toJson(),
        'star_answers': starAnswers.toJson(),
        'make': make.toJson(),
        'model': model.toJson(),
        'generation': generation.toJson(),
        'body_type': bodyType.toJson(),
        'drive_type': driveType.toJson(),
        'engine_type': engineType.toJson(),
        'gearbox_type': gearboxType.toJson(),
        'year': year.toJson(),
        'modification_type': modificationType.toJson(),
      };
}
