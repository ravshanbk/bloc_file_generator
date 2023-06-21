import '../../swagger_model.dart';
import 'car_place_slug_parametr/car_place_slug_parameter.dart';
import 'path_class/path_class.dart';

class CarPlaceSlug {
  final PatchClass carPlaceSlugGet;
  final List<CarPlaceSlugParameter> parameters;

  CarPlaceSlug({
    required this.carPlaceSlugGet,
    required this.parameters,
  });

  factory CarPlaceSlug.fromJson(Map<String, dynamic> json) => CarPlaceSlug(
        carPlaceSlugGet: PatchClass.fromJson(json['get']),
        parameters: List<CarPlaceSlugParameter>.from(json['parameters'].map((x) => CarPlaceSlugParameter.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'get': carPlaceSlugGet.toJson(),
        'parameters': List<dynamic>.from(parameters.map((x) => x.toJson())),
      };
}
