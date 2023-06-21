



import '../../swagger_model.dart';
import '../car_announcement_counter/car_annoucement_counter_get/car_place_category_list_parametr/car_place_category_list_parametr.dart';
import 'car_place_category_list_get/car_place_category_list_get.dart';

class CarPlaceCategoryList {
  final CarPlaceCategoryListGet carPlaceCategoryListGet;
  final List<CarPlaceCategoryListParameter> parameters;

  CarPlaceCategoryList({
    required this.carPlaceCategoryListGet,
    required this.parameters,
  });

  factory CarPlaceCategoryList.fromJson(Map<String, dynamic> json) => CarPlaceCategoryList(
    carPlaceCategoryListGet: CarPlaceCategoryListGet.fromJson(json['get']),
    parameters: List<CarPlaceCategoryListParameter>.from(
        json['parameters'].map((x) => CarPlaceCategoryListParameter.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    'get': carPlaceCategoryListGet.toJson(),
    'parameters': List<dynamic>.from(parameters.map((x) => x.toJson())),
  };
}
