import '../../../paths/car_announcement_counter/car_annoucement_counter_get/car_place_category_list_parametr/fluffy_responses/fluffy_200/rent_with_purchase_class/rent_with_purchase.dart';
import '../../../paths/car_place_slug/path_class/patch_responses/the_201_class/dealer/dealer.dart';
import '../../annoncement_compare/annoncement_compare_properties/year/year.dart';
import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';
import '../../product/product_properties/body_type/body_type.dart';

class RentCarProperties {
  final IsComparisonClass id;
  final Dealer type;
  final Dealer category;
  final Dealer make;
  final Dealer model;
  final Dealer generation;
  final Dealer bodyType;
  final Year year;
  final Dealer driveType;
  final Dealer modificationType;
  final Dealer gearboxType;
  final Dealer engineType;
  final BodyType engineVolume;
  final ContactNameClass color;
  final Year distanceTraveled;
  final BodyType hasAirConditioner;
  final BodyType hasBabySeat;
  final BodyType isClean;
  final BodyType isFullFuel;
  final RentWithPurchaseClass gallery;

  RentCarProperties({
    required this.id,
    required this.type,
    required this.category,
    required this.make,
    required this.model,
    required this.generation,
    required this.bodyType,
    required this.year,
    required this.driveType,
    required this.modificationType,
    required this.gearboxType,
    required this.engineType,
    required this.engineVolume,
    required this.color,
    required this.distanceTraveled,
    required this.hasAirConditioner,
    required this.hasBabySeat,
    required this.isClean,
    required this.isFullFuel,
    required this.gallery,
  });

  factory RentCarProperties.fromJson(Map<String, dynamic> json) => RentCarProperties(
        id: IsComparisonClass.fromJson(json['id']),
        type: Dealer.fromJson(json['type']),
        category: Dealer.fromJson(json['category']),
        make: Dealer.fromJson(json['make']),
        model: Dealer.fromJson(json['model']),
        generation: Dealer.fromJson(json['generation']),
        bodyType: Dealer.fromJson(json['body_type']),
        year: Year.fromJson(json['year']),
        driveType: Dealer.fromJson(json['drive_type']),
        modificationType: Dealer.fromJson(json['modification_type']),
        gearboxType: Dealer.fromJson(json['gearbox_type']),
        engineType: Dealer.fromJson(json['engine_type']),
        engineVolume: BodyType.fromJson(json['engine_volume']),
        color: ContactNameClass.fromJson(json['color']),
        distanceTraveled: Year.fromJson(json['distance_traveled']),
        hasAirConditioner: BodyType.fromJson(json['has_air_conditioner']),
        hasBabySeat: BodyType.fromJson(json['has_baby_seat']),
        isClean: BodyType.fromJson(json['is_clean']),
        isFullFuel: BodyType.fromJson(json['is_full_fuel']),
        gallery: RentWithPurchaseClass.fromJson(json['gallery']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'type': type.toJson(),
        'category': category.toJson(),
        'make': make.toJson(),
        'model': model.toJson(),
        'generation': generation.toJson(),
        'body_type': bodyType.toJson(),
        'year': year.toJson(),
        'drive_type': driveType.toJson(),
        'modification_type': modificationType.toJson(),
        'gearbox_type': gearboxType.toJson(),
        'engine_type': engineType.toJson(),
        'engine_volume': engineVolume.toJson(),
        'color': color.toJson(),
        'distance_traveled': distanceTraveled.toJson(),
        'has_air_conditioner': hasAirConditioner.toJson(),
        'has_baby_seat': hasBabySeat.toJson(),
        'is_clean': isClean.toJson(),
        'is_full_fuel': isFullFuel.toJson(),
        'gallery': gallery.toJson(),
      };
}
