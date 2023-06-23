import '../../../paths/car_place_slug/path_class/patch_responses/the_201_class/dealer/dealer.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';

class DealerMarksProperties {
  final Dealer make;
  final IsComparisonClass carsCount;

  DealerMarksProperties({
    required this.make,
    required this.carsCount,
  });

  factory DealerMarksProperties.fromJson(Map<String, dynamic> json) => DealerMarksProperties(
        make: Dealer.fromJson(json['make']),
        carsCount: IsComparisonClass.fromJson(json['cars_count']),
      );

  Map<String, dynamic> toJson() => {
        'make': make.toJson(),
        'cars_count': carsCount.toJson(),
      };
}
