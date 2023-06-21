import '../../swagger_model.dart';
import '../car_announcement_counter/car_annoucement_counter_get/car_place_category_list_parametr/car_place_category_list_parametr.dart';
import 'car_place_list_get/car_place_list_get.dart';

class CarPlaceListClass {
  final CarPlaceListGet carPlaceListGet;
  final List<CarPlaceCategoryListParameter> parameters;

  CarPlaceListClass({
    required this.carPlaceListGet,
    required this.parameters,
  });

  factory CarPlaceListClass.fromJson(Map<String, dynamic> json) => CarPlaceListClass(
        carPlaceListGet: CarPlaceListGet.fromJson(json['get']),
        parameters: List<CarPlaceCategoryListParameter>.from(
            json['parameters'].map((x) => CarPlaceCategoryListParameter.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'get': carPlaceListGet.toJson(),
        'parameters': List<dynamic>.from(parameters.map((x) => x.toJson())),
      };
}
