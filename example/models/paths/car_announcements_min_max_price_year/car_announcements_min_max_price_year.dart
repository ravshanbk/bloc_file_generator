import '../../swagger_model.dart';
import '../car_announcement_counter/car_annoucement_counter_get/car_place_category_list_parametr/car_place_category_list_parametr.dart';
import 'car_announcements_min_max_price_year_get/car_announcements_min_max_price_year_get.dart';

class CarAnnouncementsMinMaxPriceYear {
  final CarAnnouncementsMinMaxPriceYearGet carAnnouncementsMinMaxPriceYearGet;
  final List<CarPlaceCategoryListParameter> parameters;

  CarAnnouncementsMinMaxPriceYear({
    required this.carAnnouncementsMinMaxPriceYearGet,
    required this.parameters,
  });

  factory CarAnnouncementsMinMaxPriceYear.fromJson(Map<String, dynamic> json) => CarAnnouncementsMinMaxPriceYear(
        carAnnouncementsMinMaxPriceYearGet: CarAnnouncementsMinMaxPriceYearGet.fromJson(json['get']),
        parameters: List<CarPlaceCategoryListParameter>.from(
            json['parameters'].map((x) => CarPlaceCategoryListParameter.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'get': carAnnouncementsMinMaxPriceYearGet.toJson(),
        'parameters': List<dynamic>.from(parameters.map((x) => x.toJson())),
      };
}
