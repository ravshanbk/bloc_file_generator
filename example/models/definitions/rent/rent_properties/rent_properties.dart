import '../../../paths/car_place_slug/path_class/patch_responses/the_201_class/dealer/dealer.dart';
import '../../annoncement_compare/annoncement_compare_properties/price/price.dart';
import '../../annoncement_compare/annoncement_compare_properties/year/year.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';

class RentProperties {
  final IsComparisonClass id;
  final Dealer rentCar;
  final Dealer region;
  final Price price;
  final Year minAge;
  final Year minDrivingExperience;

  RentProperties({
    required this.id,
    required this.rentCar,
    required this.region,
    required this.price,
    required this.minAge,
    required this.minDrivingExperience,
  });

  factory RentProperties.fromJson(Map<String, dynamic> json) => RentProperties(
        id: IsComparisonClass.fromJson(json['id']),
        rentCar: Dealer.fromJson(json['rent_car']),
        region: Dealer.fromJson(json['region']),
        price: Price.fromJson(json['price']),
        minAge: Year.fromJson(json['min_age']),
        minDrivingExperience: Year.fromJson(json['min_driving_experience']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'rent_car': rentCar.toJson(),
        'region': region.toJson(),
        'price': price.toJson(),
        'min_age': minAge.toJson(),
        'min_driving_experience': minDrivingExperience.toJson(),
      };
}
